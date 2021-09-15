require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)
puts @total_revenue

@ave_total_revenue = @total_revenue/Store.count
puts @ave_total_revenue

@avg_revenue = Store.average(:annual_revenue)
puts @avg_revenue

puts Store.where(annual_revenue:1000000..Float::INFINITY).size
puts Store.where('annual_revenue >= ?', 1000000).count
