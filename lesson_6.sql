
USE lesson_6;

DELIMITER //

CREATE FUNCTION cts (seconds MEDIUMINT) RETURNS VARCHAR(255) DETERMINISTIC

BEGIN
    DECLARE days MEDIUMINT;
    DECLARE hours MEDIUMINT;
    DECLARE mins MEDIUMINT;
    DECLARE message VARCHAR(255);

    SET days = seconds DIV (60 * 60 * 24);
    SET seconds = seconds MOD (60 * 60 * 24);

    SET hours = seconds DIV (60 * 60);
    SET seconds = seconds MOD (60 * 60);

    SET mins = seconds DIV 60;
    SET seconds = seconds MOD 60;

    SET message = CONCAT (days, 'days', hours, 'hours', mins, 'mins', seconds, 'seconds');

    RETURN message;

END//

DELIMITER ;


SELECT cts(123456);
