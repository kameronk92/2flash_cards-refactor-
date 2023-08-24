require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round' # ask xander if these can be fed into pry in the terminal. Also ask for a recap on pry

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM) 
    
deck = Deck.new([card_1, card_2, card_3])

RSpec.describe Round do
  it 'contains a deck' do
    round = Round.new(deck)
    expect(round.deck).to eq(deck)
  end

  it 'stores turns in an array' do
    round = Round.new(deck)
    expect(round.turns).to eq([])
  end

  it 'returns the current card' do
    round = Round.new(deck)
    expect(round.current_card).to eq(card_1)
  end

end

