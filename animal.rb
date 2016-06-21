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
  def talk
    puts "bark"
  end

  def move(destination)
    puts "walking to #{destination}"
  end
end
#creating instances of the class
bird = Bird.new
dog  = Dog.new

#calling methods on the instances
bird.move("trees")
dog.talk
