# module Shout
#   def self.yell_angrily(words)
#     words + '!!!' + ' :('
#
#   end
# end
#
# module Shout
#   def self.yelling_happily(words)
#     words = '!!! :)'
#   end
# end

module Shout
  def yell_angrily(words)
    words + '!!!' + ' :('
  end

  def yelling_happily(words)
    words + '!!! :)'
  end
end

class Drill_Sergeant
  include Shout
end

class Cat
  include Shout
end

# *********** DRIVER CODE ***************************************

tiger = Cat.new
puts tiger.yell_angrily('meow')
puts tiger.yelling_happily('meeooww')

hartman = Drill_Sergeant.new
puts hartman.yell_angrily('Drop and give me twenty')
puts hartman.yelling_happily('Didn\'t think you maggots had it in you' )
