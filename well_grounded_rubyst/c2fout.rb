puts "Hello please enter a value: "
cel = gets.to_i
fh = (cel * 9/5) + 32
puts "Saving result to an outptfile 'temp.out'"
fh = File.new("temp.out", "w")
fh.puts fh
fh.close
