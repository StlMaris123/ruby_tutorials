class Person
  def initialize
    @age = age
  end

  def age
    @age
  end

  def age_difference_with(other_person)
    (self.age - other_person.age).abs
  end

  protected :age
end

fred = Person.new(34)
chris = Person(25)
puts Chris.age_difference_with(fred)
puts chris.age
