require "./employees.rb"
require "./email_reportable.rb"

class Manager < Employee
	include EmailReportable

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
















