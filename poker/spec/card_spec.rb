require 'rspec'
require 'card'

describe Card do
  subject(:card) { Card.new("3", "spades")}
  describe '#initialize' do
    it 'has a number and a suit' do
      expect(card.value.length).to eq(1)
      expect(card.suit).to eq("clubs").or(eq("diamonds")).or(eq("hearts")).or(eq("spades"))
    end
  end
  
  
end