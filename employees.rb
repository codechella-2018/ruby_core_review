# Represent employee data as an array
# first name, last name, salary, active status
# employee1 = ["Majora", "Carter", 80000, true]
# employee2 = ["Danilo", "Campos", 70000, true]
# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."


# Represent employee data as a hash
# symbol
# employee1 = {:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true}
# # classic hashrocket
# employee2 = {"first_name" => "Danilo", "last_name" => "Campos", "salary" => 70000, "active" => true}
# puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]}."
# puts "#{employee2['first_name']} #{employee2['last_name']} makes #{employee2['salary']}."
# # javascript
# employee1 = {first_name: "Majora", last_name: "Carter", salary: 80000, active: true}


# Represent employee data as a class
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







