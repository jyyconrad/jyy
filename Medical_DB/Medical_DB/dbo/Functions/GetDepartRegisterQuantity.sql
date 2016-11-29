-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION GetDepartRegisterQuantity
(
	@departmentId int
)
RETURNS int
AS
BEGIN
 
DECLARE @quantity int ;
	 select @quantity=sum(quantity) from DoctorDepartmentRelations d
inner join DoctorQuantity e on d.DoctorId=e.doctorId
where e.status=1 and d.DepartmentId=@departmentId	
return @quantity
END
