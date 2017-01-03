class Dungeon
  attr_accessor :player

  def initialize(player)
    @player = player
    @rooms = {}
  end
end
 
Player = Struct.new(:name, :location)
Room = Struct.new(:reference, :name, :description)
