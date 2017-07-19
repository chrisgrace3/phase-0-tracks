class WordGame
    attr_reader   :answer, :answer_array
    attr_reader   :letter_board_string   # when you have letters but not the whole word
    attr_reader   :answer_length     # length (number) of characters in answer
    attr_reader   :letter_board_array
    attr_writer   :all_guesses_array     # list of all unique wrong guesses
    attr_accessor :user_guess
    attr_accessor :solved


    def initialize(entry)
      @answer = entry.downcase # THIS IS THE ORIGINAL SOLUTION
      @answer_array = @answer.split('')
      @total_guesses = @answer.length
      @solved = false
      @letter_board_array = Array.new(@answer.length, "_")
      # @letter_board_array = ["_", "_", "_", "_", "_", "_", "_"]
      @letter_board_string = @letter_board_array.join('')
      @all_guesses_array = []

      @user_guess = @all_guesses_array.join('')
    end

    def check_guess(letter)
      if @answer_array.include?(letter) && (!@all_guesses_array.include?(letter))
        @all_guesses_array << letter
        puts "Yes! The solution does contain the letter #{user_guess}"
        index = @answer_array.index(user_guess)
        @letter_board_array[index] = "user_guess"
        puts "Here is what you have so far:"
        @letter_board_string
      elsif !@answer_array.include?(user_guess)
        puts "Sorry, but there is no #{user_guess} in the word. Please try again."

        if (@total_guesses - @all_guesses_array.length) > 1
          puts "You have #{@total_guesses - @all_guesses_array.length} guesses remaining"
        elsif @total_guesses - @all_guesses_array.length == 1
          puts "You have 1 guess remaining!"
        end
      end
    end


    # if the user already guessed the letter
    # we don't count that guess against them
    # tell the user they already guessed that
    # we don't need to call letter_board_reveal
    # if they haven't guessed the letter
    # call letter_board_reveal
    # remove one of their guesses (change @number_of_guesses)



  def letter_board_reveal(letter_guessed)
    index = 0
    @answer_array.each do |letter|
      if letter == letter_guessed
        @letter_board_array[index] = letter
      end
      index +=1
    end
    puts @letter_board_array
  end


  def game_over?
    if user_guess.to_s == @answer || @letter_board_array == @answer_array
      @solved = true
    else @total_guesses == 0
      @solved = false
    end
  end

end
#**********DRIVER CODE************************************************************************************
puts
puts "Hello there!"
puts "Give me a word for someone to guess:"
entry = gets.chomp.downcase
game = WordGame.new("river")


  puts
  puts
  puts
  puts
  puts
  puts"Okay, now walk away from the computer"
  puts"and allow someone to guess your word."
  puts
  puts "Please name a single letter you think is inside the word"
reply = String.new
reply = gets.chomp.downcase
reply_class = reply.class

while true
  if  reply.length = 1 || reply != reply.to_i
    break
  else
      reply.length > 1
    puts "Only one letter at a time, please."
    puts "Please try again."
    reply = gets.chomp
  end


end
game.check_guess(reply)



if @solved = true
  puts "YES! The word is indeed '#{entry}''."
  puts "Nicely done."
else
  puts "Wow. No, that is not correct at all."
  puts "What a total loser you are! Just kidding. You\'re only slightly a loser."
end




#
#   wrong_answer = true
#   while wrong_answer
#     reply = gets.chomp.downcase
#     if (reply.length < 2) && (reply != reply.to_i)
#       its_not_a_single_letter = false
#     elsif reply == reply.to_i
#       puts "Um... That is a number."
#       puts "Please enter a letter of the alphabet."
#       counts += 1
#     elsif reply.length < 2
#       puts
#       puts "I said ONE letter. That is too many letters."
#       puts "ONE LETTER ONLY:"
#       counts += 1
#     else
#       puts "What are you even doing."
#       counts += 1
#     end
#   end
# end
#
#
# while true
# puts "Please name a single letter you think is inside the word"
# reply = gets.chomp.downcase
#   if reply.length != 1
#     puts "Please enter one letter only:"
#     reply = gets.chomp.downcase
#   else
#     break
#   end
# end
#
# # game.check_guess(reply)
#
#
# if game.solved
#   puts
#   puts
#   puts "YES! The word is indeed '#{entry}''."
#   puts "Nicely done."
# else
#
# end
