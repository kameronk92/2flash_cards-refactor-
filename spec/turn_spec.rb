require './lib/card'
require './lib/turn'

RSpec.describe Turn do
it 'references a card' do
  card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  turn = Turn.new("Juneau", card)
  expect(turn.card).to eq(card)
end

it 'accepts a guess' do
  card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  turn = Turn.new("Juneau", card)
  expect(turn.guess).to eq("Juneau")
end

it 'evaluates correctness'do
  card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  turn = Turn.new("Juneau", card)

expect(turn.correct?).to eq(true)
end

it 'provides feedback' do
  card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  turn = Turn.new("Juneau", card)
  expect(turn.feedback).to eq("high five!!!")
end
end