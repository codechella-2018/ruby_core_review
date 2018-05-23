require "./employees.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Actualize::Employee.new({last_name: "Carter", salary: 80000, active: true, first_name: "Majora"})
employee2 = Actualize::Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info
employee1.give_annual_raise
puts employee1.first_name
puts employee2.last_name
employee1.active = false
puts employee1.active

manager = Actualize::Manager.new(first_name: "Gerry", last_name: "Mercado", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report
manager.give_all_raises

intern = Actualize::Intern.new(first_name: "Jenn", last_name: "Hasbrook", salary: 50000, active: true)
intern.print_info
intern.send_report