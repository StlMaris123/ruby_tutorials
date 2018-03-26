puts 'reading Celcius temperature value from data file...'
num = File.read('temp.data')
cel = num.to_i
fh = (cel * 9/5 ) + 32
puts "the no is " + num
print "result: "
puts fh
