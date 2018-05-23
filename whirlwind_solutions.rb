#1 
# a.
# foods = []
# puts "what are your favorite foods?"
# 5.times do
#   foods << gets.chomp
# end

# # p foods

# # b.
# # foods.each do |food|
# #   puts "I love #{food}"
# # end

# # c. 
# foods.each_with_index do |food, i|
#   i += 1
#   puts "#{i}. #{food}"
# end

#2 
# a.
# count = 0
# 11.times do
#   p count
#   count += 1
# end

# result = ""
# unless result
#   puts "HELLO!"
# end 

# e.
# sam = {recipes_known: 9, makes_crepes: false}
# sally = {languages_known: 6, knows_french: true}

# if sam[:recipes_known] > 10 && sally[:languages_known] > 5
#   puts "Sam and Sally should date."
# end
# if sam[:makes_crepes] || sally[:knows_french] 
#   puts "Sam and Sally should get married."
# end


#3
# a.
# people = []
# 5.times do
#   puts "First name:"
#   fname = gets.chomp
#   puts "Last name:"
#   lname = gets.chomp
#   puts "Email:"
#   email = gets.chomp
#   account_no = rand(1000000000..9999999999)
#   person = {first_name: fname, last_name: lname, email: email, account_no: account_no}
#   people << person
# end

# people.each do |person|
#   puts "First name: #{person[:first_name]}"
#   puts "Last name: #{person[:last_name]}"
#   puts "Email: #{person[:email]}"
#   puts "Account Number: #{person[:account_no]}"
# end

#4
puts "How many students are in your class?"
num_students = gets.chomp.to_i

students = []
num_students.times do
  puts "Enter student name: "
  student = gets.chomp
  students << student
end

p students

if num_students.even?
  (num_students/2).times do
    #shift returns and removes the first item(s) from the array
    puts "Group: #{students.shift(2)}"
  end
else
  puts "Group: #{students.shift(3)}"
  (students.length/2).times do
    puts "Group: #{students.shift(2)}"
  end
end
























