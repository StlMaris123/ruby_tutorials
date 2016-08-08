class Scene
  def enter()
  end
end

class Engine

  def initialize(scene_map)
	@scene_map = scene_map
  end

  def play()
	current_scene = @scene_map.opening_scene()
	last_scene = @scene_map.next_scene('finish')
	while current_scene != last_scene
	  next_scene_name = current_scene.enter()
	  current_scene = @scene_map.next_scene(next_scene_name)
	end

	#be sure to ptint out the last scene
	current_scene.enter()

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

  def enter()
  end

end

class TheBridge < Scene

  def enter()
  end

end

class EcapePod < Scene

  def enter()
  end

end

class Map

  def initialize( start_scene)
  end

  def next_scene( scene_name)
  end

  def opening_scene()
  end

end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()



