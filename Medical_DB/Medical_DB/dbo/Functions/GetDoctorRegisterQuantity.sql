
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GetDoctorRegisterQuantity]
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
	select @NRegQuantity=sum(quantity) from DoctorQuantity where doctorId=@doctorId and [status]=1
	-- Add the T-SQL statements to compute the return value here
	
	select @RegQuantity=sum(b.orderquantity) from  visits b where b.DoctorId = @doctorId and b.orderquantity>0
	-- Return the result of the function
	RETURN @RegQuantity+@NRegQuantity;

END

