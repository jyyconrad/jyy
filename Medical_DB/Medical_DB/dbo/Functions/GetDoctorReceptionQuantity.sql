
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GetDoctorReceptionQuantity]
(
	-- Add the parameters for the function here
	@doctorId int
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @NRegQuantity int;
	DECLARE @RegQuantity int
	select @NRegQuantity=sum(quantity) from DoctorQuantity where doctorId=@doctorId and [status]=2
	select @RegQuantity=count(*) from orders a (nolock) 
inner join visits b (nolock) on b.Id = a.VisitId
where a.Status in (4,7) and b.DoctorId = @doctorId
	RETURN @RegQuantity+@NRegQuantity;

END

