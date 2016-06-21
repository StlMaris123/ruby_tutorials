#ruby classes
class Bird
  def talk
    puts "chirp! chip!"
  end

  def move(destination)
    puts "they are flying to #{destination}"
  end
end

class Dog
  def make_up_name
    @name = "Bella"
  end

  def talk
    puts "#{@name} barks"
  end

  def move(destination)
    puts "walking to #{destination}"
  end

  def make_up_age
    @age = 10
  end

  def report_age
    puts "#{@name} is #{@age}years old"
  end
end
#creating instances of the class
bird = Bird.new
dog  = Dog.new

#calling methods on the instances
bird.move("trees")
dog.make_up_name
dog.talk
dog.make_up_age
dog.report_age
