#This class stores information about people
class Person
  attr_accessor :name, :age, :gender

  #create the person object and store their name
  def initialize(name)
    @name = name
  end

  #print the person's name to the screen

  def print_name
    puts "My name is #{@name}"
  end
end
