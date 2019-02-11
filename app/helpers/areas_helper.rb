module AreasHelper
  def employee_total
    total = Area.all.inject(0) do |acc, ele|
      acc + ele.employees.count
    end
    total
  end

  def cost_total
    total = Area.all.inject(0) do |acc, ele|
      acc + ele.cost
    end
    total
  end
end