DELIMITER $$

USE `leveltest`$$

DROP FUNCTION IF EXISTS `f_insert_quiz`$$

CREATE DEFINER=`root`@`%` FUNCTION `f_insert_quiz`(
_number INT,
_question VARCHAR(256),
_A VARCHAR(256),
_B VARCHAR(256),
_C VARCHAR(256),
_D VARCHAR(256),
_answer CHAR(1)
    ) RETURNS INT(11)
BEGIN
	INSERT INTO leveltest.quiz 
	(number, 	question, 	A, 	B, 	C, 	D, 	answer	)
	VALUES
	(_number, 	_question, 	_A, 	_B, 	_C, 	_D, 	_answer	);
	
	RETURN (SELECT LAST_INSERT_ID());
    END$$

DELIMITER ;