class Puppy
  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times do
      puts "Woof!"
    num
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(num)
    puts num *= 7
    num
  end

  def high_five
    puts "*high fives*"
  end

end

class Cars
  def initialize
    puts "Initialized new instance of Cars!"
  end

  def start_up
    puts "VRRROOMMMMM"
  end

  def fill_up(gallons)
    puts "Added #{gallons} gallons of gas!"
    gallons
  end
end

#DRIVER CODE **********************
bmw = Cars.new
bmw.start_up
bmw.fill_up(10)

garage = []

50.times do
  garage.push(porche = Cars.new)
end

garage.each do |car|
  car.start_up
  car.fill_up(10)
end
#
# garage.each do |car|
#   car.fill_up(10)
# end

# fido = Puppy.new
# fido.fetch("ball")
# fido.speak(4)
# fido.roll_over
# fido.dog_years(3)
# fido.high_five
# fido.initialize
