require './outputs'
require './mastermind'
require './Setup'
require './Clones'

class Won
  def self.wonTest
    sudoGuessArray=MakeClone.ofGuessArray
    sudoAnswer=MakeClone.ofAnswer
    if Mastermind.winTest(Setup.getTurns,Mastermind.try(sudoGuessArray,sudoAnswer),sudoAnswer)=="You Win!"
      Setup.setWon true
      Outputs.win
    end
  end
  def self.lostTest
    sudoGuessArray=MakeClone.ofGuessArray
    sudoAnswer=MakeClone.ofAnswer
    if Mastermind.winTest(Setup.getTurns,Mastermind.try(sudoGuessArray,sudoAnswer) ,sudoAnswer)=="You Lost"
      Setup.setLost true
      Outputs.lose
    end
  end
  def self.wrong
    Outputs.wrong
  end
end
