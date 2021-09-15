require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "-----PLEASE ENTER STORE NAME-----"
user_input = gets.chomp
new_store = Store.create(name: user_input)
# puts new_store.valid?
puts new_store.errors.full_messages

# puts "-----PLEASE ENTER EMPLOYEE FIRST NAME-----"
# user_input = gets.chomp
# new_employee = @store1.employees.create(first_name: user_input)
# # puts new_employee.valid?
# puts new_employee.errors.full_messages

