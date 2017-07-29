class Puppy

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

# ****************** DRIVER CODE ************************************************************************


fido = Puppy.new

fido.fetch("ball")

fido.speak(2)

fido.roll_over

p fido.dog_years(3)

fido.play_dead
