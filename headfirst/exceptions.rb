class FootballError < StandardError
end
class BasketballError < StandardError
end
# begin
# if game == "footaball"
# else
#   if game == "basketball"
#   end
# end
# rescue FootballError => error
#   puts error.message
# rescue BasketballError => error
#   puts error.message
# end

def football
  raise FootballError, "I dont like football"
end
def basketball
    raise BasketballError, "I dont like football"
end

begin
  football
rescue BasketballError => error
  puts error.message
end



