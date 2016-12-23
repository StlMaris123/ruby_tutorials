text = ''
line_count = 0
File.open("text.txt").each do |line|
  line_count += 1
  text << line
end

puts "#{line_count} lines"

lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join

puts "#{line_count} lines"

total_characters = text.length
puts "#{total_characters} characters"

total_characters_nospaces = text.gsub(/\s+/, '').length
puts "#{total_characters_nospaces} characters excluding spaces"

