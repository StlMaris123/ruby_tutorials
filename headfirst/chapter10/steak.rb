class Steak
  attr_accessor :grade
  def > (other)
    grade_scores = {"prime" => 3, "choice" => 2, "select" => 1}
    grade_scores[grade] > grade_scores[other.grade]
  end
end
first_steak = Steak.new
first_steak.grade = "prime"
second_steak = Steak.new
second_steak.grade = "choice"
if first_steak > second_steak
  puts "i'll take #{first_steak.inspect}"
end
