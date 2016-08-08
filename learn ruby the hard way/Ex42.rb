#Animal is_a 
class Animal 
end


# is_a member of  Animal
class Dog < Animal
  def initiliaze(name)
    #has _a name
    @name = name
  end
end

#is_a
class Cat < Animal
  def initiliaze
    #has_a name
    @name = name
  end
end

#is_a
class Person
  def initialize(name)
    #has_a name
    @name = name
    #has_a pet
    @pet =  nil
  end
  attr_accessor :pet
end

#is_a member of class person
class Employee < Person
def initialize(name, salary)
  #has_a name..get from super class
  super(name)
  @salary = salary
end
end

#is_a
class Fish
end

#is_a

class Salmon < Fish
end

#is_a
class Halibut < Fish
end

#rover is_a dog
rover = Dog.new("Rover")

#satan is_a cat
satan = Cat.new("Satan")

#mary is a person
mary = Person.new("Mary")

#has_a pet
mary.pet = satan

#frank is_a employee
frank = Employee.new("Frank", 120000)

#has_a pet
frank.pet = rover

#flipper is_a fish
flipper = Fish.new()

#crouse is a fish
crouse = Salmon.new()

#harry is a halbu
harry = Halibut.new()



