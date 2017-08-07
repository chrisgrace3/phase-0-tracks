class WordGame
  attr_reader :answer, :game_over, :chances, :letter_board_reveal
  attr_accessor :guess

  def initialize(word)
    @answer = word.upcase
    @game_over = false
    @chances = word.length
    @guess = ''
    @letter_board_reveal = "_" * word.length
    @guesses = []
  end

  def guess_letter(letter)
    @guess = letter.upcase!
    if @chances == 0
      @game_over = true
    elsif @guesses.include?(@guess)
      puts "You already guessed that letter."
    else
      if @answer.include?(@guess)
        @letter_board_reveal[@answer.index(@guess)] = @guess
        @guesses << @guess
        @chances -= 1
      else
        puts "Sorry, that letter is not in the word."
        @guesses << @guess
        @chances -= 1
        false
      end
    end
  end
end

# User Interface

puts "Hello! And welcome to the worst word game ever made."
puts "Please try not to break it."
puts "Please enter a word for someone to guess: "
game = WordGame.new(gets.chomp)
  puts "Please guess a letter."

while !game.game_over
  puts "You have #{game.chances} chances remaining."
  letter = gets.chomp
   if game.guess_letter(letter)
     puts "You got one!"
     puts game.letter_board_reveal
   end
end

if  game.answer == game.letter_board_reveal
  puts
  puts "Congratulations! You won."
else
  puts
  puts "You have lost and brought shame to your family."


end
