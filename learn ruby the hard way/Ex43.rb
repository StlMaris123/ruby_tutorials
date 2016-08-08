class Scene
  def enter()
  end
end

class Engine

  def initialize(scene_map)
  end

  def play()
  end
end

class Death < Scene

  def enter()
  end
end

class CentralCorridor < Scene

  def enter()
  end

end

class LaserWeaponArmory < Scene

  def eneter()
  end

end

class TheBridge < Scene

  def enter()
  end

end

class EcapePod < Scene

  def eneter()
  end

end

class Map

  def initilaize( start_scene)
  end

  def next_scene( scene_name)
  end

  def opening_scene()
  end

end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()



