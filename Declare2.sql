--SET NOCOUNT ON
--DECLARE @startdate DATETIME, @adddays INT;
--SET @startdate = 'January 10, 1900 12:00 AM';
--SET @adddays = 5;
--SET NOCOUNT OFF;
--SELECT @startdate + 1.25 AS 'Start Date',
--      @startdate + @adddays AS 'Add Date';

	  SET NOCOUNT ON
DECLARE @startdate DATETIME, @subtractdays INT;
SET @startdate = 'January 10, 1900 12:00 AM';
SET @subtractdays = 6;
SET NOCOUNT OFF;
SELECT @startdate  AS 'Start Date',
      @startdate - @subtractdays AS 'Subtract Date';