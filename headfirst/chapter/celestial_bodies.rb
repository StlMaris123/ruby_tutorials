class CelestialBody
attr_accessor :type, :name
end
#setting up the default object
default_body = CelestialBody.new
default_body.type = 'planet'
bodies = Hash.new(default_body)
#inspect the default object
p bodies.default
#try to add value to the hash
bodies['mars'].name = 'Mars'
#inspect the object again
p bodies.default
