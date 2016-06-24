class Animal
  attr_accessor :age, :name
  def age=(value)
    if value < 0
      raise "age cant be negative"
    end
    @age = value
  end


  def name=(value)
    if name == ""
      raise "name cant be blank"
    end
    @name = value
  end

  def talk
    puts "chirps"
  end

  def move(source)
    puts"moves from the #{source}"
    puts"#{@name} is #{@age} years old"
  end
end

class Dog < class Animal
end

class Cat < class Animal
end

class Bird < class Animal
end

#creating instances 
bella  = Dog.new
bingo  = Cat.new
parrot = Bird.new
bella.name = "Bella"
bella.age = 5

#calling the methods
bella.move(house)
parrot.talk
