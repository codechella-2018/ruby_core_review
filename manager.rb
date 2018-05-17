class Employee

	attr_accessor :first_name, :last_name, :salary, :active
	# attr_writer :first_name, :last_name, :salary, :active
	# attr_writer :first_name, :last_name, :salary, :active

	def initialize(options_hash)
		@first_name = options_hash[:first_name]
		@last_name = options_hash[:last_name]
		@salary = options_hash[:salary]
		@active = options_hash[:active]
	end

	def print_info
		puts "#{first_name} #{last_name} makes #{salary} a year."
	end

	def give_annual_raise
		@salary = 1.05 * @salary
		puts @salary
	end

end

class Manager < Employee

	def initialize(options_hash)
		super
		@employees = options_hash[:employees]
	end

	def send_report
		puts "Sending email..."
		#email sending library code
		puts "Email sent!"
	end

	def give_all_raises
		# loop through all managers employees and give them a raise (use method above)
		# print out managers employees
		# loop through array and print out each employees first name
		@employees.each do |employee|
			employee.give_annual_raise
		end
	end

	def fire_all_employees
		# loop through all managers employees and change active status to false
		@employees.each do |employee|
			employee.active = false
		end
	end
end

employee1 = Employee.new({last_name: "Carter", salary: 80000, active: true, first_name: "Majora"})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee1.print_info
# employee2.print_info
# employee1.give_annual_raise
# puts employee1.first_name
# puts employee2.last_name
# employee1.active = false
# puts employee1.active

manager = Manager.new(first_name: "Gerry", last_name: "Mercado", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report
# manager.give_all_raises
















