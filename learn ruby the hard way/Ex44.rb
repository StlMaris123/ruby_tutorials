class Parent
  def altered()
    puts "PARENT altered"
  end
end

class Child  < Parent
  def altered()
    puts "CHILD, BEFORE PARENET altered()"
    super()
    puts "CHILD, AFTER altered()"
  end

end
dad = Parent.new()
son = Child.new()

dad.altered()
son.altered()
