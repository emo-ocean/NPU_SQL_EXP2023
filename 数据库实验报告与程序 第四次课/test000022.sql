# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 156
#231119 21:24:58 server id 1  end_log_pos 125 CRC32 0xdcd5e216 	Start: binlog v 4, server v 8.0.26 created 231119 21:24:58 at startup
# Warning: this binlog is either in use or was not closed properly.
ROLLBACK/*!*/;
BINLOG '
qgxaZQ8BAAAAeQAAAH0AAAABAAQAOC4wLjI2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAACqDFplEwANAAgAAAAABAAEAAAAYQAEGggAAAAICAgCAAAACgoKKioAEjQA
CigBFuLV3A==
'/*!*/;
# at 6839
#231121 23:12:14 server id 1  end_log_pos 6944 CRC32 0x58c16f54 	Query	thread_id=11	exec_time=0	error_code=0	Xid = 251
SET TIMESTAMP=1700579534/*!*/;
SET @@session.pseudo_thread_id=11/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C gbk *//*!*/;
SET @@session.character_set_client=28,@@session.collation_connection=28,@@session.collation_server=255/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
create database db1
/*!*/;
# at 6944
#231121 23:12:14 server id 1  end_log_pos 7021 CRC32 0x291028d9 	Anonymous_GTID	last_committed=21	sequence_number=22	rbr_only=no	original_committed_timestamp=1700579534392195	immediate_commit_timestamp=1700579534392195	transaction_length=186
# original_commit_timestamp=1700579534392195 (2023-11-21 23:12:14.392195 中国标准时间)
# immediate_commit_timestamp=1700579534392195 (2023-11-21 23:12:14.392195 中国标准时间)
/*!80001 SET @@session.original_commit_timestamp=1700579534392195*//*!*/;
/*!80014 SET @@session.original_server_version=80026*//*!*/;
/*!80014 SET @@session.immediate_server_version=80026*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7021
#231121 23:12:14 server id 1  end_log_pos 7130 CRC32 0x23e6d7bc 	Query	thread_id=11	exec_time=0	error_code=0	Xid = 253
use `db1`/*!*/;
SET TIMESTAMP=1700579534/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
create table t1(id int)
/*!*/;
# at 7130
#231121 23:12:14 server id 1  end_log_pos 7207 CRC32 0x24d7a3ad 	Anonymous_GTID	last_committed=22	sequence_number=23	rbr_only=no	original_committed_timestamp=1700579534431383	immediate_commit_timestamp=1700579534431383	transaction_length=186
# original_commit_timestamp=1700579534431383 (2023-11-21 23:12:14.431383 中国标准时间)
# immediate_commit_timestamp=1700579534431383 (2023-11-21 23:12:14.431383 中国标准时间)
/*!80001 SET @@session.original_commit_timestamp=1700579534431383*//*!*/;
/*!80014 SET @@session.original_server_version=80026*//*!*/;
/*!80014 SET @@session.immediate_server_version=80026*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7207
#231121 23:12:14 server id 1  end_log_pos 7316 CRC32 0x21e9491c 	Query	thread_id=11	exec_time=0	error_code=0	Xid = 254
SET TIMESTAMP=1700579534/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
create table t2(id int)
/*!*/;
# at 7316
#231121 23:12:14 server id 1  end_log_pos 7395 CRC32 0x80cf7f27 	Anonymous_GTID	last_committed=23	sequence_number=24	rbr_only=yes	original_committed_timestamp=1700579534437220	immediate_commit_timestamp=1700579534437220	transaction_length=271
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1700579534437220 (2023-11-21 23:12:14.437220 中国标准时间)
# immediate_commit_timestamp=1700579534437220 (2023-11-21 23:12:14.437220 中国标准时间)
/*!80001 SET @@session.original_commit_timestamp=1700579534437220*//*!*/;
/*!80014 SET @@session.original_server_version=80026*//*!*/;
/*!80014 SET @@session.immediate_server_version=80026*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7395
#231121 23:12:14 server id 1  end_log_pos 7469 CRC32 0xfc7628d4 	Query	thread_id=11	exec_time=0	error_code=0
SET TIMESTAMP=1700579534/*!*/;
BEGIN
/*!*/;
# at 7469
#231121 23:12:14 server id 1  end_log_pos 7516 CRC32 0x4ec1a3df 	Table_map: `db1`.`t1` mapped to number 113
# at 7516
#231121 23:12:14 server id 1  end_log_pos 7556 CRC32 0x3fd478ba 	Write_rows: table id 113 flags: STMT_END_F

BINLOG '
zshcZRMBAAAALwAAAFwdAAAAAHEAAAAAAAEAA2RiMQACdDEAAQMAAQEBAN+jwU4=
zshcZR4BAAAAKAAAAIQdAAAAAHEAAAAAAAEAAgAB/wALAAAAunjUPw==
'/*!*/;
# at 7556
#231121 23:12:14 server id 1  end_log_pos 7587 CRC32 0xb637522b 	Xid = 255
COMMIT/*!*/;
# at 7587
#231121 23:12:14 server id 1  end_log_pos 7666 CRC32 0xb42c2e03 	Anonymous_GTID	last_committed=24	sequence_number=25	rbr_only=yes	original_committed_timestamp=1700579534440864	immediate_commit_timestamp=1700579534440864	transaction_length=271
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1700579534440864 (2023-11-21 23:12:14.440864 中国标准时间)
# immediate_commit_timestamp=1700579534440864 (2023-11-21 23:12:14.440864 中国标准时间)
/*!80001 SET @@session.original_commit_timestamp=1700579534440864*//*!*/;
/*!80014 SET @@session.original_server_version=80026*//*!*/;
/*!80014 SET @@session.immediate_server_version=80026*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7666
#231121 23:12:14 server id 1  end_log_pos 7740 CRC32 0x93bfeec8 	Query	thread_id=11	exec_time=0	error_code=0
SET TIMESTAMP=1700579534/*!*/;
BEGIN
/*!*/;
# at 7740
#231121 23:12:14 server id 1  end_log_pos 7787 CRC32 0xcfdf258d 	Table_map: `db1`.`t1` mapped to number 113
# at 7787
#231121 23:12:14 server id 1  end_log_pos 7827 CRC32 0xecb0f3a1 	Write_rows: table id 113 flags: STMT_END_F

BINLOG '
zshcZRMBAAAALwAAAGseAAAAAHEAAAAAAAEAA2RiMQACdDEAAQMAAQEBAI0l388=
zshcZR4BAAAAKAAAAJMeAAAAAHEAAAAAAAEAAgAB/wAMAAAAofOw7A==
'/*!*/;
# at 7827
#231121 23:12:14 server id 1  end_log_pos 7858 CRC32 0x707ceead 	Xid = 256
COMMIT/*!*/;
# at 7858
#231121 23:12:14 server id 1  end_log_pos 7937 CRC32 0x86569bb6 	Anonymous_GTID	last_committed=25	sequence_number=26	rbr_only=yes	original_committed_timestamp=1700579534445081	immediate_commit_timestamp=1700579534445081	transaction_length=271
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1700579534445081 (2023-11-21 23:12:14.445081 中国标准时间)
# immediate_commit_timestamp=1700579534445081 (2023-11-21 23:12:14.445081 中国标准时间)
/*!80001 SET @@session.original_commit_timestamp=1700579534445081*//*!*/;
/*!80014 SET @@session.original_server_version=80026*//*!*/;
/*!80014 SET @@session.immediate_server_version=80026*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7937
#231121 23:12:14 server id 1  end_log_pos 8011 CRC32 0xab1b2465 	Query	thread_id=11	exec_time=0	error_code=0
SET TIMESTAMP=1700579534/*!*/;
BEGIN
/*!*/;
# at 8011
#231121 23:12:14 server id 1  end_log_pos 8058 CRC32 0xe05423a3 	Table_map: `db1`.`t1` mapped to number 113
# at 8058
#231121 23:12:14 server id 1  end_log_pos 8098 CRC32 0xdbc09004 	Write_rows: table id 113 flags: STMT_END_F

BINLOG '
zshcZRMBAAAALwAAAHofAAAAAHEAAAAAAAEAA2RiMQACdDEAAQMAAQEBAKMjVOA=
zshcZR4BAAAAKAAAAKIfAAAAAHEAAAAAAAEAAgAB/wANAAAABJDA2w==
'/*!*/;
# at 8098
#231121 23:12:14 server id 1  end_log_pos 8129 CRC32 0xf74ea128 	Xid = 257
COMMIT/*!*/;
# at 8129
#231121 23:12:14 server id 1  end_log_pos 8208 CRC32 0x41c5e130 	Anonymous_GTID	last_committed=26	sequence_number=27	rbr_only=yes	original_committed_timestamp=1700579534449652	immediate_commit_timestamp=1700579534449652	transaction_length=271
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1700579534449652 (2023-11-21 23:12:14.449652 中国标准时间)
# immediate_commit_timestamp=1700579534449652 (2023-11-21 23:12:14.449652 中国标准时间)
/*!80001 SET @@session.original_commit_timestamp=1700579534449652*//*!*/;
/*!80014 SET @@session.original_server_version=80026*//*!*/;
/*!80014 SET @@session.immediate_server_version=80026*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 8208
#231121 23:12:14 server id 1  end_log_pos 8282 CRC32 0x584e7ece 	Query	thread_id=11	exec_time=0	error_code=0
SET TIMESTAMP=1700579534/*!*/;
BEGIN
/*!*/;
# at 8282
#231121 23:12:14 server id 1  end_log_pos 8329 CRC32 0x718290da 	Table_map: `db1`.`t2` mapped to number 114
# at 8329
#231121 23:12:14 server id 1  end_log_pos 8369 CRC32 0x9792cb43 	Write_rows: table id 114 flags: STMT_END_F

BINLOG '
zshcZRMBAAAALwAAAIkgAAAAAHIAAAAAAAEAA2RiMQACdDIAAQMAAQEBANqQgnE=
zshcZR4BAAAAKAAAALEgAAAAAHIAAAAAAAEAAgAB/wAVAAAAQ8uSlw==
'/*!*/;
# at 8369
#231121 23:12:14 server id 1  end_log_pos 8400 CRC32 0xa27543cb 	Xid = 258
COMMIT/*!*/;
# at 8400
#231121 23:12:14 server id 1  end_log_pos 8479 CRC32 0x87e25821 	Anonymous_GTID	last_committed=27	sequence_number=28	rbr_only=yes	original_committed_timestamp=1700579534451601	immediate_commit_timestamp=1700579534451601	transaction_length=271
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1700579534451601 (2023-11-21 23:12:14.451601 中国标准时间)
# immediate_commit_timestamp=1700579534451601 (2023-11-21 23:12:14.451601 中国标准时间)
/*!80001 SET @@session.original_commit_timestamp=1700579534451601*//*!*/;
/*!80014 SET @@session.original_server_version=80026*//*!*/;
/*!80014 SET @@session.immediate_server_version=80026*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 8479
#231121 23:12:14 server id 1  end_log_pos 8553 CRC32 0x9e407bb6 	Query	thread_id=11	exec_time=0	error_code=0
SET TIMESTAMP=1700579534/*!*/;
BEGIN
/*!*/;
# at 8553
#231121 23:12:14 server id 1  end_log_pos 8600 CRC32 0x5e0996f4 	Table_map: `db1`.`t2` mapped to number 114
# at 8600
#231121 23:12:14 server id 1  end_log_pos 8640 CRC32 0x0f21795d 	Write_rows: table id 114 flags: STMT_END_F

BINLOG '
zshcZRMBAAAALwAAAJghAAAAAHIAAAAAAAEAA2RiMQACdDIAAQMAAQEBAPSWCV4=
zshcZR4BAAAAKAAAAMAhAAAAAHIAAAAAAAEAAgAB/wAWAAAAXXkhDw==
'/*!*/;
# at 8640
#231121 23:12:14 server id 1  end_log_pos 8671 CRC32 0xe5dd2e26 	Xid = 259
COMMIT/*!*/;
# at 8671
#231121 23:12:14 server id 1  end_log_pos 8750 CRC32 0xf0b17ba2 	Anonymous_GTID	last_committed=28	sequence_number=29	rbr_only=yes	original_committed_timestamp=1700579534453922	immediate_commit_timestamp=1700579534453922	transaction_length=271
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1700579534453922 (2023-11-21 23:12:14.453922 中国标准时间)
# immediate_commit_timestamp=1700579534453922 (2023-11-21 23:12:14.453922 中国标准时间)
/*!80001 SET @@session.original_commit_timestamp=1700579534453922*//*!*/;
/*!80014 SET @@session.original_server_version=80026*//*!*/;
/*!80014 SET @@session.immediate_server_version=80026*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 8750
#231121 23:12:14 server id 1  end_log_pos 8824 CRC32 0xf189bdaa 	Query	thread_id=11	exec_time=0	error_code=0
SET TIMESTAMP=1700579534/*!*/;
BEGIN
/*!*/;
# at 8824
#231121 23:12:14 server id 1  end_log_pos 8871 CRC32 0xe7610ea7 	Table_map: `db1`.`t2` mapped to number 114
# at 8871
#231121 23:12:14 server id 1  end_log_pos 8911 CRC32 0xf8e568f0 	Write_rows: table id 114 flags: STMT_END_F

BINLOG '
zshcZRMBAAAALwAAAKciAAAAAHIAAAAAAAEAA2RiMQACdDIAAQMAAQEBAKcOYec=
zshcZR4BAAAAKAAAAM8iAAAAAHIAAAAAAAEAAgAB/wAXAAAA8Gjl+A==
'/*!*/;
# at 8911
#231121 23:12:14 server id 1  end_log_pos 8942 CRC32 0x640bee33 	Xid = 260
COMMIT/*!*/;
# at 8942
#231121 23:12:14 server id 1  end_log_pos 9019 CRC32 0x50244fe4 	Anonymous_GTID	last_committed=29	sequence_number=30	rbr_only=no	original_committed_timestamp=1700579534472745	immediate_commit_timestamp=1700579534472745	transaction_length=202
# original_commit_timestamp=1700579534472745 (2023-11-21 23:12:14.472745 中国标准时间)
# immediate_commit_timestamp=1700579534472745 (2023-11-21 23:12:14.472745 中国标准时间)
/*!80001 SET @@session.original_commit_timestamp=1700579534472745*//*!*/;
/*!80014 SET @@session.original_server_version=80026*//*!*/;
/*!80014 SET @@session.immediate_server_version=80026*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 9019
#231121 23:12:14 server id 1  end_log_pos 9144 CRC32 0x9e07faf7 	Query	thread_id=11	exec_time=0	error_code=0	Xid = 261
SET TIMESTAMP=1700579534/*!*/;
DROP TABLE `t1` /* generated by server */
/*!*/;
# at 9144
#231121 23:12:14 server id 1  end_log_pos 9223 CRC32 0x0faf0e95 	Anonymous_GTID	last_committed=30	sequence_number=31	rbr_only=yes	original_committed_timestamp=1700579534484355	immediate_commit_timestamp=1700579534484355	transaction_length=271
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1700579534484355 (2023-11-21 23:12:14.484355 中国标准时间)
# immediate_commit_timestamp=1700579534484355 (2023-11-21 23:12:14.484355 中国标准时间)
/*!80001 SET @@session.original_commit_timestamp=1700579534484355*//*!*/;
/*!80014 SET @@session.original_server_version=80026*//*!*/;
/*!80014 SET @@session.immediate_server_version=80026*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 9223
#231121 23:12:14 server id 1  end_log_pos 9297 CRC32 0xc2b3d41e 	Query	thread_id=11	exec_time=0	error_code=0
SET TIMESTAMP=1700579534/*!*/;
BEGIN
/*!*/;
# at 9297
#231121 23:12:14 server id 1  end_log_pos 9344 CRC32 0x22fa0f02 	Table_map: `db1`.`t2` mapped to number 114
# at 9344
#231121 23:12:14 server id 1  end_log_pos 9384 CRC32 0xa3e1af20 	Write_rows: table id 114 flags: STMT_END_F

BINLOG '
zshcZRMBAAAALwAAAIAkAAAAAHIAAAAAAAEAA2RiMQACdDIAAQMAAQEBAAIP+iI=
zshcZR4BAAAAKAAAAKgkAAAAAHIAAAAAAAEAAgAB/wAYAAAAIK/how==
'/*!*/;
ROLLBACK /* added by mysqlbinlog */ /*!*/;
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
