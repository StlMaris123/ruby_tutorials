class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    @wheel = args[:wheel]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end

  def wheel
    @wheel ||= Wheel.new(rim, tire)
  end
end

class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end

gear = Gear.new(
                :chairing => 52,
                :cog => 11,
                :wheel => Wheel.new(26, 1.5)).gear_inches
puts gear 

# puts Gear.new(52, 11, 20, 40).gear_inches

# puts Gear.new(52, 11, 20, 40).ratio


