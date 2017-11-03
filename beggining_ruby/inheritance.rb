class ParentClass
  def method1
    puts "hello from method1 class"
  end

  def method2
    puts "Hello from method2 class"
  end
end

class ChildClass < ParentClass
  def method2
    puts "Hello from method2 in the child class"
  end
end

my_object = ChildClass.new
my_object.method1
my_object.method2
