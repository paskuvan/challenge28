class EmployeesController < ApplicationController

  def create
    @company = Company.find(params[:company_id])
    @employee = @company.employees.build(employee_params)
    flash[:notice] = if @employee.save
      'Employee saved correctly'
    else
      'Employee could not be saved'
    end
    redirect_to @employee.company
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:notice] = 'Your employee was destroyed!!!'
    redirect_to @employee.company
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :area_id)
  end
end