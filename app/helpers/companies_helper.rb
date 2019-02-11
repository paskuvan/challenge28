module CompaniesHelper
	def employee_area(employee)
    area = Area.find(employee.area_id)
    area.name
	end
end
