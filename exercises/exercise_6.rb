require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

Store.has_many :employees
Employee.belongs_to :store

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Daniel", last_name: "Cameron", hourly_rate: 70)
@store1.employees.create(first_name: "Englebert", last_name: "Humperdink", hourly_rate: 40)
@store2.employees.create(first_name: "Harry", last_name: "Belafonte", hourly_rate: 35)
@store2.employees.create(first_name: "Daniel", last_name: "Cameron", hourly_rate: 50)
@store2.employees.create(first_name: "Bob", last_name: "Dylan", hourly_rate: 22)
