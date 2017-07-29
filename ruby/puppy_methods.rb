class Puppy

  def initialize
    puts "Initializing new puppy instance ... "

  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times do
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(int)
    int * 7
  end

  def play_dead
    puts "*plays dead*"
  end

end

class Kitten

  def initialize
    puts "Initializing kitten class ..."
  end

  def pet
    puts "purrr..."
  end

  def give_catnip
    puts "*goes nuts*"
  end

end

# ****************** DRIVER CODE ************************************************************************

fido = Puppy.new
fido.fetch("ball")
fido.speak(2)
fido.roll_over
p fido.dog_years(3)
fido.play_dead

playpen = []
50.times do
  playpen << Kitten.new
end

playpen.each do |kitten|
  kitten.give_catnip
  kitten.pet  
end
