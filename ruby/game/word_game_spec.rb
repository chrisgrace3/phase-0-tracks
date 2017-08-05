require_relative 'word_game'

describe WordGame do
    let(:game) { WordGame.new("word") }


  it "stores and returns given solution" do
    expect(game.answer).to eq ("WORD")
  end

  it "returned the length of the word as guesses allowed" do
    expect(game.chances).to eq 4
  end

  it "check to see if incorrect, and this should be correct" do
    expect(game.check_guess('i')).to eq ("_i___")
  end

  it "check to see if correct, and this should be correct" do
    expect(game.check_guess('i')).to eq ("_i___")
  end

  it "fills in whenever a letter is in the answer_array"  do
    expect(game.letter_board_reveal('i')).to eq ("_i___")
  end


end
