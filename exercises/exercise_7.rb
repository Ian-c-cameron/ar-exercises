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
Employee.validates :first_name, presence: true
Employee.validates :last_name, presence: true
Employee.validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200 }
Employee.validates :store_id, numericality: { only_integer: true, greater_than: 0 }

Store.validates :name, length: { minimum: 3 }
Store.validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
# Store.validates :must_have_aparel see ../lib/store.rb 

puts "Enter a store name:"
new_store = gets.chomp
@invalid_store = Store.create(name: new_store)
pp @invalid_store.errors.messages