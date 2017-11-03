the_count = [1,2,3,4,5,]
fruits    = ['apples', 'oranges', 'pears', 'apicarots'] 
change   = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#traditional style of for_loop
# for number in the_count
#   puts "this is  count #{number}"
# end
the_count.each { |number| puts "this is count #{number}" }


fruits.each do |fruit|
  puts "A fruits of type: #{fruit}"
end

#going through a mixed list
change.each { |i| puts "I got #{i}" }

#building lists
elements = []

#Range operator to do 0 to 5 counts
(0...5).each do |i|
  puts "adding #{i} to the list"
  elements.push(i)
end

#printing the elements
elements.each { |i| puts "Element was : #{i}" }
