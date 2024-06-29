create table icbc_card(
	icbcid int,
	sno varchar(8),
	balance int
);
create table campus_card(
	sno varchar(8),
	balance int
);
insert into campus_card values ('20200032', 1);
insert into campus_card values ('20200033', 100);
insert into icbc_card values (1, '20200032', 300);
insert into icbc_card values (2, '20200033', 400);  

-- DELETE FROM campus_card;
-- DELETE FROM icbc_card;

-- 1.编写一个事务处理实现如下的操作：某学号为20200032的学生从银行卡中转账200元到校园卡中，若中间出现故障则进行rollback。（10分）
DROP PROCEDURE IF EXISTS `tran_from_ic_to_bc`;
DELIMITER $$
use `student` $$
create definer=`root`@`localhost` procedure `tran_from_ic_to_bc`()
begin
	declare bank_card_money int default 0;
    set bank_card_money = (
		select balance from icbc_card where sno = '20200032');
	if bank_card_money >= 200 then
		update icbc_card set balance = balance - 200 where sno = '20200032';
        update campus_card set balance = balance + 200 where sno = '20200032';
	else
		rollback;
	end if;
end$$
select * from icbc_card;
select * from campus_card;
call tran_from_ic_to_bc();


-- 2.针对本题的数据库和表，分别用具体的例子展现几种数据不一致问题：如丢失修改、读脏数据、不可重复读和幻读（删除和插入），注意如有无法展现的情况，请说明原因。（20分，每种数据不一致10分）
create table card(id char(2), _value INT);
DELETE FROM card;
INSERT INTO card (id, _value) VALUES ('a', 0);

--# 1.丢失更新
begin;
-- #T1
select _value into @v1 from card where id='a';
-- #T2
select _value into @v2 from card where id='a';
update card set _value = @v2 + 200 where id='a';
commit;
-- #T1
update card set _value = @v1 + 100 where id='a';
commit;
select _value from card where id='a';
--# 2.读脏数据
begin;
-- #T1
select _value from card where id='a';
-- #T2
select _value from card where id='a';
update card set _value = _value+200 where id='a';
-- #T1
select _value from card where id='a';
-- #T2
commit;
-- #T1
commit;

--# 3.不可重复读
begin;
-- #T1
select _value from card where id='a';
-- #T2
select _value from card where id='a';
update card set _value = _value+200 where id='a';
-- #T1
select _value from card where id='a';
-- #T2
commit;
-- #T1
select _value from card where id='a';
commit;

--# 4.幻读
begin;
-- #T1
select count(*) from card;
-- #T2
select count(*) from card;
insert into card values ('b', 200);
commit;
-- #T1
select count(*) from card;
commit;

-- 3.利用数据库的隔离级别或者锁机制等，设计方案分别解决上述丢失修改、读脏数据、不可重复读、幻读的数据不一致问题。（20分，每种数据不一致5分）
# 丢失修改
#-- 在数据上加写锁X
# 读脏数据
#-- 先加X锁，然后读数据时加S锁，读完释放S
# 不可重复读
#-- 先加X锁，然后读数据时加S锁，事件结束释放S
# 幻读
#-- 

-- 4.构造两个事务同时更新一条数据，尝试使用以下SQL命令查看和理解当前系统中事务以及锁的状态等信息。（10分）
show engine innodb status;
select * from information_schema.innodb_trx;
select * from performance_schema.data_locks; 
select * from sys.innodb_lock_waits;

-- 5.构造一个出现死锁的情形。（10分）

-- 6.构造含有savepoint的事物，并在某时刻回滚到某个savepoint。（10分）
start transaction;
insert into icbc_card values ('3','20200034','100');
savepoint point1;
insert into icbc_card values ('4','20200035','200');
savepoint point2;
insert into icbc_card values ('5','20200036','300');
#当前状态
select * from icbc_card;
#回滚point2
rollback to savepoint point2;
#回滚point1
rollback to savepoint point1;
#提交
commit;


-- 7.通过实验查看mysql中的各种日志：查询日志、错误日志、慢查询日志。（10分）
--#打开日志
set global general_log = on;
--# 查询日志
show variables like '%general_log%';
--# 错误日志
show variables like '%log_error%';
--# 慢查询日志
show variables like '%slow_query_log_file%';


-- 8.用mysqlbinlog查看数据库的事务日志，并尝试按照以下场景进行数据恢复。（10分）
-- 操作步骤：
-- 1）建立db1，建立t1、t2表。t1、t2表结构：create table t1(id int);
-- 2）向t1插入数据：11,12, 13
-- 3）向t2插入数据：21, 22, 23
-- 3)  drop table t1;
-- 4) t2还可以正常使用，给t2插入数据24
-- 在以上第4步的操作之后，利用mysqlbinlog恢复t1的数据。

-- 以上4个步骤的SQL如下：
create database db1;
create table t1(id int);
create table t2(id int);
insert into t1 values(11);
insert into t1 values(12);
insert into t1 values(13);
insert into t2 values(21);
insert into t2 values(22);
insert into t2 values(23);
drop table t1;
insert into t2 values(24);