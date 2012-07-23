require "rspec"
require './mastermind'

#colors
#1=red
#2=green
#3=blue
#4=yellow
#5=brown
#6=orange
#7=black
#8=white

describe Mastermind do
  it "should try red" do
    Mastermind.try([1,1,1,1],[1,1,1,1]).should == [2,2,2,2]
    Mastermind.winTest(0,Mastermind.try([1,1,1,1],[1,1,1,1]),[2,2,2,2]).should=="You Win!"
  end
  it "should try green" do
    Mastermind.try([2,2,2,2],[2,2,2,2]).should == [2,2,2,2]
    Mastermind.winTest(0,Mastermind.try([2,2,2,2],[2,2,2,2]),[2,2,2,2])
  end
  it "should try blue" do
    Mastermind.try([3,3,3,3],[3,3,3,3]).should == [2,2,2,2]
    Mastermind.winTest(0,Mastermind.try([2,2,2,2],[2,2,2,2]),[2,2,2,2])
    end
  it "should try yellow" do
    Mastermind.try([4,4,4,4],[4,4,4,4]).should == [2,2,2,2]
    Mastermind.winTest(0,Mastermind.try([2,2,2,2],[2,2,2,2]),[2,2,2,2])
  end
    it "should try brown" do
      Mastermind.try([5,5,5,5],[5,5,5,5]).should == [2,2,2,2]
      end
  it "should try orange" do
      Mastermind.try([6,6,6,6],[6,6,6,6]).should == [2,2,2,2]
    end
  it "should try black" do
      Mastermind.try([7,7,7,7],[7,7,7,7]).should == [2,2,2,2]
  end
  it "should try black" do
    Mastermind.try([8,8,8,8],[8,8,8,8]).should == [2,2,2,2]
  end
  it "should get first wrong color" do
    Mastermind.try([1,2,2,2],[2,2,2,2]).should == [2,2,2,0]
  end
  it "should get 2 wrong colors" do
    Mastermind.try([1,1,2,2],[2,2,2,2]).should == [2,2,0,0]
  end
  it "should get 3 wrong colors" do
    Mastermind.try([1,1,1,2],[2,2,2,2]).should == [2,0,0,0]
  end
  it "should get 4 wrong colors" do
    Mastermind.try([1,1,1,1],[2,2,2,2]).should == [0,0,0,0]
  end
  it "should get 2 wrong colors" do
    Mastermind.try([1,2,1,2],[2,2,2,2]).should == [2,2,0,0]
  end
  it "should get all wrong colors" do
    Mastermind.try([2,1,5,6],[3,4,7,8]).should == [0,0,0,0]
  end
  it "should get all right colors" do
    Mastermind.try([1,2,3,4],[1,2,3,4]).should == [2,2,2,2]
  end
  it "should get all right colors out of place" do
    Mastermind.try([4,3,2,1],[1,2,3,4]).should == [1,1,1,1]
  end
  it "should get all right colors out of place" do
    Mastermind.try([4,3,2,1],[1,2,3,4]).should == [1,1,1,1]
  end




end