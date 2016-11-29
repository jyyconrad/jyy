


CREATE FUNCTION [dbo].[GetHospitalRegisteringQuantity]
(@hospitalId int)
RETURNS int
AS
BEGIN
	declare @RegisteringQuantity int;
	select @RegisteringQuantity=isnull(sum(b.orderquantity),0) from 
	visits b (nolock)	
	where b.VisitHospitalId = @hospitalId and b.Status=1
	declare @NRegQuantity int;
	select @NRegQuantity=isnull(sum(quantity),0) from DoctorQuantity where hospitalId=@hospitalId and status=1
	return @RegisteringQuantity+@NRegQuantity;
END



