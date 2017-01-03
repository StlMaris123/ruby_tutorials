my_array = %w{ just testing this stuff awesome read by me }
longest_word = ''
my_array.each do |word|
  longest_word = word if longest_word.length < word.length
end

puts longest_word
