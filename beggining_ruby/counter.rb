class Square
  def initialize
    if defined?(@@number_of_squares)
      @@number_of_squares += 1
    else
      @@number_of_squares = 1
    end
  end

  def self.count
    @@number_of_squares
  end
end

a = Square.new
puts Square.count
b = Square.new
puts Square.count
c = Square.new
puts Square.count


