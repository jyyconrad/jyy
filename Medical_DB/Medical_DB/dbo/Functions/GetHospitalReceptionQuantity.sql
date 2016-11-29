



CREATE FUNCTION [dbo].[GetHospitalReceptionQuantity]
(@hospitalId int)
RETURNS int
AS
BEGIN
	declare @RegisteringQuantity int;
	select @RegisteringQuantity=count(*) from orders a (nolock) 
left join Visits b on a.VisitId=b.Id
where a.Status in (4,7)  and b.VisitHospitalId = @hospitalId
	declare @NRegQuantity int;
	select @NRegQuantity=isnull(sum(quantity),0) from DoctorQuantity where hospitalId=@hospitalId and status=2
	return @RegisteringQuantity+@NRegQuantity;
END




