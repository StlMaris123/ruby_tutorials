class WordSplitter
  include Enumerable
  attr_accessor :string
  #creates a new instance with its string
  #attribute set to the give string
  def initialize(string)
    self.string = string
  end
  def each
    string.split("").each do |word|
      yield word
    end
  end
end 

