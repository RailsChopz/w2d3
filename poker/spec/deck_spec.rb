require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) { Deck.new}
  describe '#initialize' do
    it 'has 52 cards' do
      expect(deck.deck.length).to eq(52)
    end
    
    it 'has 4 aces' do
      aces = deck.deck.select { |card| card.value == "A"}
      expect(aces.length).to eq(4)
    end
  end
end