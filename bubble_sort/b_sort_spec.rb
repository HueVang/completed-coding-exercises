require './b_sort1.rb'
require 'rspec'

# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"

describe "#bubble_sort" do
  it "works with an empty array" do
    bubble_sort([]).should == []
  end

  it "works with an array of one item" do
    bubble_sort([1]).should == [1]
  end

  it "sorts numbers" do
    bubble_sort([5, 4, 3, 2, 1]).should == [1, 2, 3, 4, 5]
  end
end
