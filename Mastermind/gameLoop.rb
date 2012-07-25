require './mastermind'
require './Inputs'
require './outputs'
require './Setup'
require './won'

class GameLoop
  def self.gameLoop
    while !Setup.getWon && !Setup.getLost
      Setup.setTurns(1)
      count=Setup.getAllGuesses.length
      Setup.gameLoop
      while count>0 do count-=1
      Outputs.guessesDisplay(Setup.getAllGuesses[count].to_s)
      end

      while Setup.getGuessLength>0
        Outputs.colorNumber(Setup.getGuessArray.length+1)
        color=Inputs.input
        while color<1||color>8
          Outputs.inputColor
          color=Inputs.input
        end
        Setup.setGuessLength(-1)
        Setup.addToGuessArray Mastermind.colorGet(color)
      end
      Setup.addToAllGuesses Setup.getGuessArray
      Outputs.pegs Mastermind.try(Setup.getGuessArray,Setup.getAnswer).to_s
      Outputs.won? Mastermind.winTest(Setup.getTurns,Mastermind.try(Setup.getGuessArray,Setup.getAnswer),Setup.getAnswer)
      Won.wonTest
      Won.lostTest
    end
  end
end