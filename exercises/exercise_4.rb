require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)


@mens_stores = Store.where(mens_apparel: true)
@women_stores_less_than_1m = Store.where(womens_apparel:true, annual_revenue: 0..1000000)
# for mens_store in @mens_stores
#   puts mens_store.name
#   puts mens_store.annual_revenue
# end
@mens_stores.each do |store|
  puts store.name, store.annual_revenue
end
# for women_store_less_than_1m in @women_stores_less_than_1m
#   puts women_store_less_than_1m.name
#   puts women_store_less_than_1m.annual_revenue
# end
@women_stores_less_than_1m.each do |store|
  puts store.name, store.annual_revenue
end
