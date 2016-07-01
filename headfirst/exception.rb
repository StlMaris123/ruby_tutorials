class Oven
  attr_accessor :contents
  def turn_on
    puts "turn on the oven"
    @state = "on"
  end
  def turn_off
    puts "turning off the oven"
    @state = "off"
  end

  def bake
    unless @state == "on"
      raise "you need to turn on the oven first"
    end
    if @contents == nil
      raise "There is nothing in the oven!"
    end
    "golden-brown #{contents}"
  end
end
diner = ['chips', nil, 'chicken']
oven = Oven.new
oven.turn_on
diner.each do |item|
  begin
    oven.contents = item
    puts "serving #{oven.bake}"
  rescue => error
    puts "error: #{error.message}"
    end
  end

