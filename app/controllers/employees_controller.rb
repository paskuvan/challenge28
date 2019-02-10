class EmployeesController < ApplicationController
  def create
  @company = Company.find(params[:company_id])
  @employee = @company.employees.build(employee_params)
  @employee.save
  redirect_to company_path(@employee.company_id)
end

def destroy
  @employee = Employee.find(params[:id])
  @employee.destroy
  redirect_to company_path(@employee.company_id)
end
  private
def employee_params
  params.require(:employee).permit(:first_name, :last_name, :email, :area_id)
end
end