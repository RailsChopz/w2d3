require 'rspec'
require 'tdd'

describe "#remove_dups" do
  it "returns a uniq array" do
    expect(remove_dups([1,1,2,3])).to eq([1,2,3])
  end
end

describe "#two_sum" do
  it "finds all pairs of positions that equal to zero when summed" do
    expect(two_sum([-1, 0, 2, -2, 1])).to eq([[0, 4], [2, 3]])
  end
end

describe "#my_transpose" do
  it "transposes an array" do
    array = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
    expect(my_transpose(array)).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
  end
end


describe "#stock_picker" do 
    it "outputs the most profitable pair of days" do 
      expect(stock_picker([10,5,6,3,12])).to eq([3,4])
    end 
end 
