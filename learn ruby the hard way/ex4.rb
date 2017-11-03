cars = 100
space_in_a_car = 4
drivers = 30
passengers = 90

cars_not_driven = cars - drivers
cars_driven = drivers
car_pool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

puts "there are #{cars} available"
puts "there are only #{drivers} drivers available"
puts "there will be #{cars_not_driven} cars not driven today"
puts "we can transport #{car_pool_capacity} people today"
puts "we have #{passengers} to car pool today"
puts "we need to put about #{average_passengers_per_car} today"
