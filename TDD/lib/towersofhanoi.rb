class Towers
  attr_reader :towers
  
  def initialize
    @towers = [[3,2,1],[],[]]
  end
  
  def move(from, to)
    if valid_move?(from,to)
      disc = towers[from].pop
      towers[to] << disc 
    else
      raise 'not valid'
    end 
    'success'
  end
  
  def valid_move?(from, to)
    return false if towers[from].empty?
    return true if towers[to].empty?
    return false if towers[from].last > towers[to].last
    return true if towers[to].last > towers[from].last
  end
  
  def won?
     towers[1].length ==3 || towers[2].length == 3
  end
end