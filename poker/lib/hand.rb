require 'card'

class Hand 
  
  HIERARCHY = %w(highcard pair twopair threeofkind straight flush fullhouse fourofkind straightflush royalstraightflush)
  
  SUITS = %w(diamonds clubs hearts spades)
  VALS = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  
  attr_reader :cards, :type, :card_counts
  
  def initialize(cards)
    @cards = cards
    @card_counts = card_count
  end
  
  def compare_hand(other)
    
  end
  
  def card_count
    results = Hash.new(0)
    cards.each do |card|
      results[card.value] += 1
    end
    results
  end
  
  def is_four_kind?
    card_count.values.include?(4)
  end
  
  def royal_straight_flush?
    
  end
  
  def pair?
    card_count.values.uniq.length==3 && card_count.values.include?(2)
  end
  
  def triple?
    card.count.values.include?(3) && card_count.values.uniq.length==3
  end 
  
  def full_house?
    values = card.count.values
    values.include?(2) && values.include?(3)
  end 
  
  def two_pair?
    values = card_count.values
    values.include?(2) && values.uniq.length==3
  end 
  
  def flush?
    temp = [] 
    cards.each do |card|
      temp << card.suit
    end 
    tmp.uniq.length==1  
  end 
  
  def get_highest_card
    cards.sort_by! {|card| card.value , card.suit}
    cards.last
  end 
  
  
  
  
end 