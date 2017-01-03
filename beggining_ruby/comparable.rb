class Song
  include Comparable
  
  attr_accessor :length

  def <=>(other)
    @length <=> other.length
  end

  def initialize(song_name, length)
    @song_name = song_name
    @length = length
  end
end

a = Song.new('Die hard', 89)
b = Song.new('My love', 200)
c = Song.new('Merry Christmas', 5)

puts a > b
puts c >= a
puts a.between?(c,b)
