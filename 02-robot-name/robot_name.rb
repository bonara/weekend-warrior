class Robot
  attr_accessor :name
  def initialize
    @name = self.generate
  end

  def generate
    chars = ("A".."Z").to_a
    digits = (0..9).to_a
    name = chars.sample(2).flatten.join("") + digits.sample(3).flatten.join("")
    return name
  end

  def reset
    @name = self.generate
  end
end


