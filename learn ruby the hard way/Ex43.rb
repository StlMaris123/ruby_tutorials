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
	puts "You burst onto the brdge with the neutron destruct bomb"
	puts "Under your arm and surprise 5 Gathons who rae trying to "
	puts " take control of the ship. Each of them ahas an even uglier"
	puts "cloown costume than the last. They havent pilled out ther"
	puts "weapons out yet, as they see the active bomb under your"
	puts "arm and dont want to set it off"
	print ">"

	action = $stdin.gets.chomp
	if action == "throw the bomb"
	  puts "In apanic you throw the bomb at the gathons"
	  puts "and make a leap for the door. Right as you drop it a "
	  puts " Gathon shoots you right in the back killing"
	  puts " As you die you see another Gathon franctically try to disarm"
	  puts "the bomb. You die knowing they will probably blow up when"
	  puts "it goes off"
	  return 'death'

	elsif action == "slowly place the bomb"
	  puts "You point your blaster at the bomb under yoyr arm"
	  puts "and the gathon s put their arns up and they start to sweat"
	  puts "You inch backward to the door, open it, and then carefully"
	  puts " place the bomb on the floor pointing your blaster on it"
	  puts "and then you jump up thhrough the door, punch the close button"
	  puts "and blast the lock so the gathons cant get out"
	  puts "Now the bomb is places you run to the escape pod to"
	  puts "get off this tin can"
	  return 'escape_pod'
	else
	  puts "DOES NOT COMPUTE"
	  return "the_bridge"
	end

  end

end

class EcapePod < Scene

  def enter()
	puts "you rush through the ship desperately trying to makke it"
	puts "the escape pod before the whole ship explodes. It seems like"
	puts "hardly any gathons are on  the ship so your run is clear of"
	puts "Interference. You get to the chamber withj escape pods and"
	puts "onne you need to take one to take. Some of them could be damaged"
	puts "but you dont have time to look. There's 5 pods which one"
	puts "do you take?"

	good_pod = rand(1..5)
	print "[pod #]>"
	guess = $stdin.gets.chomp.to_i

	if guess != good_pod
	  puts "You jump into pod %s and hit the eject button" % guess
	  puts "The pod escapes out into the void space, then"
	  puts "implodes as the hull ruptures, crushing your body"
	  puts "into jam jelly"
	  return 'death'

	else 

	  puts "You jump into pod %s and hit the eject button" % guess
	  puts "The pod easily slides out into the space heading to"
	  puts "the planet below. AS it flies to the planet, you look"
	  puts "back and see you ship implode then explode like a "
	  puts "bright star, talking out of the gathon ship at the same time"
	  puts "You won!"
	  
	  return 'finished'
	end
  end
end

class Finished < Scene
  def enter()
	puts "You won! Good job."
  end
end

class Map
  @@scenes = {
	'central_corridor' => CentralCorridor.new(),
	'laser_weapon_armory' => LaserWeaponArmory.new(),
	'the_bridge' => TheBridge.new(),
	'escape_pd' => EscapePod.new(),
	'death' => Death.new(),
	'finished' => Finished.new(),
  }

  def initialize( start_scene)
	@start_scene = start_scene
  end

  def next_scene( scene_name)
	val = @@scenes[scene_scene]
	return val
  end

  def opening_scene()
	return next_scene(@start_scene)
  end

end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()



