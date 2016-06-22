puts "type a phrase of your choice"
input = gets
phrase = input.chomp
puts "here is your phrase when reversed"
puts phrase.reverse

#exercise 2 qn 1
def paragraph(text)
  puts "<p>#{text}</p>"
end

def image(source, width = 100, height = 100)
  "<img src ='#{source}' width = '#{width}' height = '#{height}'/>"
end

  paragraph("hello girlfriend")
  puts image("image.png", 50, 100)

#question 2
class Rectangle
    def width=(value)
      if value < 0
       raise "width cant be blank"
      end
      @width = value
    end
    
    def height=(value)
      if value < 0 
        raise "height cant be blank"
      end
      @height = value
    end

  def area
    width * height
  end
end
  rectangle = Rectangle.new
  rectangle.width = 70
  rectangle.height = -20
  puts rectangle.area
