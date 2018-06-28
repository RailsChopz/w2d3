require 'rspec'
require 'towersofhanoi'

describe Towers do
  subject(:tower) { Towers.new }
  
  describe '#initialize' do
    it 'creates 3 towers' do
      expect(tower.towers.length).to eq(3)
    end
    it 'creates 1 tower with 3 discs 3,2,1,' do
      expect(tower.towers.first).to eq([3,2,1])
    end
    it 'creates 2 empty towers' do
      expect(tower.towers[1]).to be_empty
      expect(tower.towers[2]).to be_empty
    end
  end
  
  describe '#valid_move?' do
    it 'should return false if the from tower is empty' do
      expect(tower.valid_move?(1,2)).to be false
    end
    
    it 'should return false if moving a larger disc onto a smaller one' do
      tower.towers[0] = [3,2]
      tower.towers[1] = [1]
      expect(tower.valid_move?(0, 1)).to be false
    end
    it 'should return true if the to tower is empty' do
      expect(tower.valid_move?(0,2)).to be true
    end
    
    it 'should return true if the to tower disc is bigger than the from tower disc' do 
      tower.towers[0] = [3,1]
      tower.towers[1] = [2]
      expect(tower.valid_move?(0, 1)).to be true
  end
end 
  
  describe '#move' do
    it 'should move a disc to another tower' do 
      tower.towers[0] = [3,1]
      tower.towers[1] = [2]
      tower.move(0,1)
      expect(tower.towers[1]).to eq([2,1])
    end 
    it 'should raise an error if not valid move' do 
      expect { tower.move(2,1) }.to raise_error('not valid')
    end 
    it 'should call valid move' do
      allow(tower).to receive(:valid_move?).and_return(true)
      expect(tower.move(0,1)).to eq('success')
    end 
  end
  
  describe '#won?' do
    it 'should return true when tower 1 or tower 2  has a length of 3' do 
      tower.towers[1] = [3,2,1]
      tower.towers[0] = []
      expect(tower.won?).to be true
    end 
  end
end
  
  