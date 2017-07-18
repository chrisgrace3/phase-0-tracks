class WordGame
  attr_reader   :answer_string         # original correct answer
  attr_reader   :answer_array
  attr_reader   :letter_board_string   # when you have letters but not the whole word
  attr_reader   :answer_length     # length (number) of characters in answer
  attr_reader   :letter_board_array
  attr_writer   :all_guesses_array     # list of all unique wrong guesses
  attr_accessor :solved

  def initialize(entry)
    @answer_string = entry.downcase
    @answer_array = @answer_string.split('')
    @answer_length = entry.length

    @solved = nil

    @letter_board_array = []
    @answer_length.times do
    @letter_board_array << " _ "
    end # .times do end
    @all_guesses_array = [] # list of all unique wrong guesses
  end # initialize method end


  def check_guess(guess)
    x = @answer_length
    y = 0

    while x > y
      guess_array = guess.split('')
        if @answer_string == guess
           @solved = true
           break
         elsif @answer_string != guess
           guess_array.each do |x|
             if @answer_string == guess
                @solved = true
                break
             elsif @answer_array.include?(x) || (!@letter_board_array.include?(guess))
               index = @answer_array[guess_array.index(x)]
               @letter_board_array[index.to_i] = x
               puts "Not quite, but you got some characters correct:"
               puts @letter_board_array.join
               puts "Now guess again!"
               guess = gets.chomp.downcase
               y += 1
             end
           end
         elsif @letter_board_array.include?(guess)
           puts "You already guessed that!"
           puts "Try again."
        end
    end
  end
end

#**********DRIVER CODE************************************************************************************


puts "Hello there!"
puts "Give me a word for someone to guess:"
entry = gets.chomp.downcase

game = WordGame.new(entry)
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts"Okay, now walk away from the computer"
puts"and allow someone to guess your word."
puts
puts "What do you think the word is??"
reply = gets.chomp.downcase

game.check_guess(reply)

if game.solved == true
  puts
  puts
  puts "YES! The word is indeed '#{entry}''."
  puts "Nicely done."
else
  puts "Wow. No, that is not correct at all."
  puts "What a total loser you are! Just kidding. You\'re only slightly a loser."
end
