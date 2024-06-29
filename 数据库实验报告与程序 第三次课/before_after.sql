-- before触发器：
DELIMITER //
CREATE TRIGGER before_student_update
BEFORE UPDATE ON student
FOR EACH ROW
BEGIN
    IF NEW.SAGE < 18 OR NEW.SAGE > 30 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid age range for student';
    END IF;
END;
//
DELIMITER ;

-- after触发器：
DELIMITER //
CREATE TRIGGER after_student_update
AFTER UPDATE ON student
FOR EACH ROW
BEGIN
    INSERT INTO student_update_log (SNO, Updated_At)
    VALUES (NEW.SNO, NOW());
END;
//
DELIMITER ;


-- 更新语句：
UPDATE student SET SAGE = 25 WHERE SNO = '10003';

