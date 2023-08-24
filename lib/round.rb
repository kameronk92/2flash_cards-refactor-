class Round
attr_reader :deck, :turns

def initialize(deck)
  @deck = deck
  @turns = []
end
# require 'pry'; binding.pry
def current_card
  deck.cards[0] #why is this how to access? is it like file structure where you have to go through deck to get to cards?
end

end