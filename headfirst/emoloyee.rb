class Employee

  #name attribute is inherited in both classes
  attr_reader :name

  def name=(name)
    if name == ""
      raise "name cant be blank"
    end
    @name  = name
  end

  #super will be used to call this method in both classes
  def initialize(name="anyonone")
    #a call to the name method
    self.name = name #without self, you are assigning a variable
  end

  #method for both classes
  def print_name
    puts "Name: #{@name}"
  end

end
class SalariedEmployee < Employee
  #the attribute is only specific to salaried_employee
  attr_reader :salary

  def salary=(salary)
    if salary < 0
      raise"salary of #{salary} cant be negative"
    end
    @salary = salary
  end
  #called when we call the SalariedEmployee.new
  def initialize(name="anyone",salary=0.0)
    #call the super class initialize method passing only the name
    super(name)
    #set the salary since its specific to this class only
    self.salary = salary
  end


  def salary_output
    #have the super class print the name
    print_name
    #calculates salary for the two weeks
    pay_for_period = (@salary / 365.0) * 14
    #format the pay with two decimal places
    formatted_pay = format("$%.2f", pay_for_period)
    puts "your salary for this period is: #{formatted_pay}"
  end
end

class HourlyEmployee < Employee
  #defines a new class method
  def self.security_guard(name)
    #creates a new instance with the specified name and a pre-defined hourly-age and hours per week
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  #attribute is specific to this class
  attr_reader :salary
  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "hourly_wage of #{hourly_ wage} is not valid"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "#{hours_per_week} is invalid"
    end
    @hours_per_week = hours_per_week
  end


  #called when we call HourlyEmployee.new
  def initialize(name="anyone", hourly_wage=0.0, hours_per_week=0.0)
    #calls the super calss initialize metod calling only the name
    super(name)
    #call the other methods since they belong to a specific class
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def salary_output
    print_name
    pay_for_period = hourly_wage * hours_per_week
    formatted_pay = format("$%.2f", pay_for_period)
    puts "pay for this period is: #{formatted_pay}"
  end
end


maris = SalariedEmployee.new("Maris", 60000000)
maris.salary_output

juma = HourlyEmployee.security_guard("Juma")
juma.salary_output



