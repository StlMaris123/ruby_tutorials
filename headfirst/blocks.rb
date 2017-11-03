def find_adjective(string)
  #break the string into an array of words
  words = string.split(" ")
  #find the index of the word "is"
  index = words.find_index("is")
  #return the word following"is"
  words[index + 1]
end

#create the variable inside the block
lines = []
#Open the File automatically and close it when we are done
File.open("reviews.txt") do |review_file|
  #read every line in the file into an array
  lines = review_file.readlines
end

#find the lines that include the movie name
relevant_lines = lines.find_all { |line| line.include?("Truncated") }
#Exclude reviewer bylines
reviews = relevant_lines.reject { |line| line.include?("--") }

#process each review 
adjectives = reviews.map do |review|
  #find the adjective
  adjective = find_adjective(review)
  #return the adjective, capitalised  and surrounded by quotes
  "'#{adjective.capitalize}'"
end
puts"The critics agree, Truncated is:"
puts adjectives

