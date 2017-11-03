#my random generator game
puts "Welcome to this game!"

#welcoming the user
print "please enter your name:"
input = gets
name = input.chomp
puts "welcome, #{name}!"

#store a random number for the player to guess
puts "I have a random number between 1 and 100"
puts "Can you guess it?"
target = rand(100) + 1


#track the number of guesses
guess_no = 0


#track whether the player has guess correctly
guessed_it = false
until guess_no == 10 || guessed_it

puts "you have #{10 - guess_no} guesses left"
asterisk = "*" * (10 - guess_no)
puts asterisk
print "Make a guess:"
guess = gets.to_i
guess_no += 1

#compare the guesses to the target
#print the appropriate message
if guess < target 
   puts "OOPS! That target was too LOW"
elsif guess > target 
   puts "OOPS! That target was too HIGH"
elsif guess == target
   puts "great job, #{name}"
  puts "you guessed it in #{guess_no} attempts!"
  guessed_it = true
end
end
#if the player ran out of attempts tell them what the number was
unless guessed_it
   puts "sorry you did not guess my number right, it was #{target}."
end


