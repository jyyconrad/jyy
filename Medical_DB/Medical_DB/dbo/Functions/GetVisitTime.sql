
CREATE FUNCTION [dbo].[GetVisitTime]
(@visitDate datetime ,@timeBucket int)
RETURNS datetime
AS
BEGIN
	declare @VisitTime datetime;
	set @VisitTime = @visitDate;
	if @timeBucket=1
	begin
		set @VisitTime = dateadd(hour,8,@visitDate); 
		set @VisitTime = dateadd(Minute,30,@VisitTime); 
	end
	else
	begin
		set @VisitTime = dateadd(hour,12,@visitDate); 
		set @VisitTime = dateadd(Minute,30,@VisitTime); 
	end
	return @VisitTime;
END

