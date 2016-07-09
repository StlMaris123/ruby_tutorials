def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a/ b
end

puts "letts do some math with just functions!"
age = add(26, 22)
height = subtract(75, 20)
weight = multiply(25, 2)
iq = divide(200, 2)

puts "Age: #{age}, height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts "Here is the puzzle."
what = add(age, subtract(height, multiply(weight, divide(iq, 2))))
puts "That becomes: #{what}. Can you do it by hand?"

  
