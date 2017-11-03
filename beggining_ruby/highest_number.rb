my_array = %w{ 23 5 89 700 12 0 }
highest_number = 0
my_array.each do |number|
  number = number.to_i
  highest_number = number if number > highest_number
end

puts highest_number
