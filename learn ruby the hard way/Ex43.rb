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

  @@quips= [
	"You died.You kinda suck at this.",
	"Your mum would be proud ... if she were smarter.",
    "Such a loser",
	"I have a smaller puppy that's better at this."
  ]

  def enter()
	puts @@quips[rand(0..(@@quips.length - 1))]
	exit(1)
  end
end

class CentralCorridor < Scene

  def enter()
	puts "The Gathons of planet Percel #25 have invaded youu ship and destroyed it"
	puts " Your entire crew. You are the last surving member"
	puts " Mission is to get the neutron destruct bomb from thee weopons"
	puts " Put it on the bridge. and blow the ship up "
	puts "Escape pod"
	puts "\n"
	puts " You are running down the central corridor to the weopons Armory"
	puts " A gathon jumps out, red scaly skin, dark grimy teeth and evil claws"
	puts " Flowing around his hate filled body. He is blocking the body"
	puts "Armory and about to pull a weapon to blast you."
	print ">"

	action = $stdin.gets.chomp
	if action == 'shoot!'
	  puts "Quick on the draw you yank out your blaster and fire it"
	  puts "His clown sostume is flowing and moving around his body"
	  puts "Off your aim. Your laser hits his costume but misses him entirely"
	  puts "Completely ruins his brand new costume his mother bought him"
	  puts "Makes him fly into an insane rage and blast you repeatedly"
	  puts "You are dead. Then he eats you"
	  return 'death'

	elsif action == "dodge!"
	  puts " Like a world class boxer you dodge, weave, slip and slide right"
	  puts "as the Gathons blaster cranks a laser past your head"
	  puts "in the middle of your artful dodge your foot slips and you"
	  puts " bang you head on themetal wall and pass out"
	  puts "You wake up shortly after only to die as the gathon stomps on you"
	  puts "You are dead. Then he eats you"
	  return 'death'

	elsif action == "tell a joke!"
	  puts "Lucky you coz  they mad tou learn Gothon insults in the academy"
	  puts "You tell the Gathon the one joke you know"
	  puts "Lbhe xzxc edj.wfjkf.ckaf."
	  puts "The Gathon tries not to laugh then bursts out laughing"
	  puts "While laughing you run up and shoot him square in the head"
	  puts "Putting him doown, then jump through the weapon Armory door"
	  return 'Laser_weapon_armory'

	else 
	  puts "DOES NOT COMPUTE!"
	  return 'central_corridor'
	end

  end

end

class LaserWeaponArmory < Scene

  def enter()
	puts "You do dive roll into the weapon Armory, crouch and scan the room"
	puts "for more Gthons that might be hiding. Its dead quiet, too quiet"
	puts "You stand up and run to the far side of the room nd find the"
	puts "neutron bomb in its container. There is a key on the box"
	puts "and you need the code to get the bomb out. If you get the code"
	puts " wrong 10 times then the lock closes forever and you can't"
	puts "get the bomb. The coode is 3 digits"
	code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)} "
	print "[keypad]>"
	guess = $stdin.gets.chomp
	guess = 0

	while guess != code && guesses < 10
	  puts "BZZZZZZZEEEED"
	  guesses += 1
	  print "[keypad]>"
	  guess = $stdin.gets.chomp
	end

	if guess == code
	  puts "The container clicks open and seal breaks letting gas out"
	  puts "You grab the neutron bomb and run as fast as you can to the"
	  puts "bridge whwre you msut place it in the right spot"
	  return 'the_bride'

	else
	  puts "The lock buzzes one last time and then you hear a sickening"
	  puts "mwltinf sound a sthe mechanism is fused togethr"
	  puts "you decide to sit there and finally the gathons blow up the"
	  puts"ship from their ship and tou die"
	  return 'death'
	end

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



