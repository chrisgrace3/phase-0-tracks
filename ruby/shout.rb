module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
  end
end

puts Shout.yell_angrily("Get off my lawn")

puts Shout.yell_happily("I'm king of the world")
