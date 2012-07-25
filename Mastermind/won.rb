require './outputs'
require './mastermind'
require './Setup'

class Won
  def self.wonTest
    if Mastermind.winTest(Setup.getTurns,Mastermind.try(Setup.getGuessArray,Setup.getAnswer),Setup.getAnswer)=="You Win!"
      Setup.setWon true
      Outputs.win
    end
  end
  def self.lostTest
    if Mastermind.winTest(Setup.getTurns,Mastermind.try(Setup.getGuessArray,Setup.getAnswer),Setup.getAnswer)=="You Lost"
      Setup.setLost true
      Outputs.lose
    end
  end
end
