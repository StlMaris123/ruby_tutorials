class Dungeon
  attr_accessor :player

  def initialize(player)
    @player = player
    @rooms = {}
  end

  def add_room(reference, name, description, connections)
    @rooms[reference] = Room.new(reference, name, description, connections)
  end

  def start(location)
    @player.location = location
    show_current_description
  end

  def show_current_description
    puts find_room_in_dungeon(@player.location).full_description
  end

  def find_room_in_dungeon(reference)
    @rooms[reference]
  end

  def find_room_in_direction(direction)
    find_room_in_dungeon(@player.location).connections[direction]
  end

  def go(direction)
    puts "You go " + direction.to_s
    @player.location = find_room_in_direction(direction)
    show_current_description
  end
end

class Player
  attr_accessor :name, :location

  def initialize(name)
    @name = name
  end
end

  class Room
    attr_accessor :reference, :name, :description, :connections

    def initialize(reference, name, description, connections)
      @reference = reference
      @name = name
      @description = description
      @connections = connections
    end

    def full_description
      @name + "\n\nYou are in " + @description
    end
  end
 

player = Player.new("Miss Njage")
my_dungeon = Dungeon.new(player)

#add rooms to the dungeon
my_dungeon.add_room(:largecave, "Large Cave", "a large caveronous cave", { :west => :smallcave })
my_dungeon.add_room(:smallcave, "Small Cave", "a small, claustrophic cave", { :east => :largecave })

#start by placing the player in the large cave
my_dungeon.start(:largecave)
my_dungeon.show_current_description
my_dungeon.go(:west)
my_dungeon.go(:east)