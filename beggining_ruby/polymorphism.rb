class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

  class Cat < Animal
    def talk
      "meeeeaaaaaw"
    end
  end

  class Dog < Animal
    def talk
      "woof! woof!"
    end
  end

  animals = [Cat.new("Kitty"), Dog.new("Bingo"), Cat.new("Engen")]
  animals.each do |animal|
    puts animal.talk
  end
