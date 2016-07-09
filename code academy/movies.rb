movies = {romantic: 1,
          horror: 5,
          comedy: 3
}
puts "whats do you want to do? (add, update,delete,display)"
choice = gets.chomp
case choice
when "add"
  if movies[title.to_sym] == nil
    puts "Give a movie title"
    title = gets.chomp.to_sym

    puts "Whats your rating?"
    rating = gets.chomp.to_i

    movies[title] = rating
    puts "Your movie #{title} has been added with a rating of #{rating}"
  else puts "Movie exists"
  end 
when "update"
  puts "which movie title do you want to update?"
  title = gets.chomp.to_sym
  if movies[title] == nil
    puts "Movie does not exist"
  else
    puts "give your new rating"
    new_rating = gets.chomp.to_i
    movies[title.to_sym] = new_rating.to_i
    puts "your movie #{title} has been updated with #{new_rating}"
  end
when "display"
  movies.each do |k, v|
    puts "#{k}: #{v}"
  end
when "delete"
  puts "which movie do you want to delete?"
  title = gets.chomp.to_sym
  if movies[title] == nil
    puts "movie does not exist"
  else
    movies.delete!(title)
  end
else
  puts "Error!"
end
