require 'yaml'

class Person
  attr_accessor :name, :age
end

fred = Person.new
fred.name = "Fred Papa"
fred.age = 25

laura = Person.new
laura.name = "Laura Mwende"
laura.age = 23
test_data = [ fred, laura ]
puts test_data.to_yaml
