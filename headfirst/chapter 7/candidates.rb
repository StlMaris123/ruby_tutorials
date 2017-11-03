class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  #using keywords and default values
  def initialize(name,age, occupation, hobby: nil,
                 birthplace:nil )
    self.name = name
    #using parameter names
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end
end
p Candidate.new("Stella", 45, "student")
