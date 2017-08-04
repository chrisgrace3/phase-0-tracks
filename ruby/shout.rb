# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
# end

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :)"
  end
end

class OldMan
  include Shout
end

class Actor
  include Shout
end

leo = Actor.new
clint = OldMan.new

puts clint.yell_angrily("Get off my lawn")

puts leo.yell_happily("I'm king of the world")
