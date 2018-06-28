require_relative 'card'

class Deck
  attr_reader :deck
  
  SUITS = %w(diamonds clubs hearts spades)
  VALS = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  
  def initialize
    @deck = []
    SUITS.each do |suit|
      VALS.each do |val|
        deck << Card.new(val, suit)
      end
    end
  end
  
  def shuffle_cards
    deck.shuffle!
  end 
  
end