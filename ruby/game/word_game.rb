class WordGame
  attr_reader :answer, :game_over, :chances, :letter_board_reveal
  attr_accessor :guess

  def initialize(word)
    @answer = word.upcase
    @game_over = false
    @chances = word.length
    @guess = ''
    @letter_board_reveal = "_" * word.length
  end

  def guess_letter(letter)
    @guess = letter.upcase
    if @letter_board_reveal.include?(@guess)
      puts "You already guessed that letter."
    else
      if @answer.include?(@guess)
        
        @letter_board_reveal[@answer.index(@guess)] = @guess

        true
      else
        false
      end
    end
  end
end

# User Interface

puts "Hello! And welcome to the worst word game ever made."
puts "Please enter a word for someone to guess: "
game = WordGame.new(gets.chomp)
  puts "Please guess a letter."

while !game.game_over
  puts "You have #{game.chances} chances remaining."
  letter = gets.chomp
   if game.guess_letter(letter)
     puts "You got one!"
     puts game.letter_board_reveal
   else
     puts "Sorry, that letter is not in the word."
   end
end
