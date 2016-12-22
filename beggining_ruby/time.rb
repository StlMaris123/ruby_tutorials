class Fixnum
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end
end

puts Time.now
puts Time.now + 10.minutes
puts Time.now + 16.hours
