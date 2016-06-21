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
  attr_accessor :name, :age
    def name=(value)
    if value == ""
      raise "name cant be blank"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "age cant be negative"
    end
    @age = value
  end

  def talk
    puts "#{@name} barks"
  end

  def move(destination)
    puts "walking to #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age}years old"
  end
end
#creating instances of the class
bird = Bird.new
fido  = Dog.new
fido.name = "Fido"
fido.age = 8
bella= Dog.new
bella.name = "Bella"
bella.age = 3

#calling methods on the instances
bird.move("trees")
fido.report_age
bella.report_age
