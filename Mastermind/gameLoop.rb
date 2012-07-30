require './mastermind'
require './Inputs'
require './outputs'
require './Setup'
require './won'
require './Clones'

class GameLoop
  def self.gameLoop
    while !Setup.getWon && !Setup.getLost
      Setup.addTurns(1)
      count=Setup.getAllGuesses.length
      Setup.gameLoop
      while count>0 do count-=1
      Outputs.guessesDisplay(Setup.getAllGuesses[count].to_s)
      end

      while Setup.getGuessLength>0
        Outputs.colorNumber(Setup.getGuessArray.length+1)
        color=Inputs.input.to_i
        while color!=1&&color!=2&&color!=3&&color!=4&&color!=5&&color!=6&&color!=7&&color!=8
          Outputs.inputColor
          color=Inputs.input.to_i
        end
        Setup.addGuessLength(-1)
        Setup.addToGuessArray color
      end
      Setup.addToAllGuesses Setup.getGuessArray
      sudoGuessArray=MakeClone.ofGuessArray
      sudoAnswer=MakeClone.ofAnswer
      guess2s= Mastermind.find2s(sudoGuessArray,sudoAnswer)
      guess1s= Mastermind.find1s(guess2s,sudoAnswer)
      pegs= Mastermind.find0s(guess1s,sudoAnswer)
      Outputs.pegs pegs
      Won.wonTest
      Won.lostTest
      Won.wrong
    end
  end
end