ten_things = "Apples Oranges Crows Telephone Light Sugar"
puts " Wait there are not 10 things in that list. lets fix that"

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", " Frisbee", "Corn", "Banana", "Girl"]

#using mat to make sure there's 10 items

while stuff.length != 10
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "There are #{stuff.length} items.now"
end

puts "There we go: #{stuff} "

puts "Lets do some things with stuff"

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join('')
puts stuff[3..5].join("#")

