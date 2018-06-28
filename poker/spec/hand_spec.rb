require 'rspec'
require 'hand'

describe Hand do
  
  let (:card1) {double("card1", :value => "10", :suit => "hearts")}
  let (:card2) {double("card2", :value => "10", :suit => "clubs")}
  let (:card3) {double("card3", :value => "10", :suit => "diamonds")}
  let (:card4) {double("card2", :value => "2", :suit => "hearts")}
  let (:card5) {double("card2", :value => "2", :suit => "diamonds")}
  let (:cards) {[card1, card2, card3, card4, card5]}
  subject(:hand) { Hand.new(cards)}
  
  let (:card5) {double("card2", :value => "5", :suit => "diamonds")}
  let (:card7) {double("card2", :value => "5", :suit => "clubs")
  let (:card8) {double("card2", :value => "2", :suit => "diamonds")
  let (:card9) {double("card2", :value => "3", :suit => "diamonds")
  let (:card10) {double("card2", :value => "4", :suit => "diamonds")
  let (:otherhand) {[card6, card7, card8, card9, card10]}
  subject(:otherhand) { Hand.new(otherhand)}
  
  describe '#initialize' do
    it 'has 5 cards' do
      expect(hand.cards.length).to eq(5)
    end
  end
  
  describe '#compare_hand' do 
    it 'compares to equal hands' 
    #it 'compares royal flush to a pair'
    
    it 'compares full house to a pair' #full house 
  end 
  
end