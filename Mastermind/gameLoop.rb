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
      output= Mastermind.find2s(sudoGuessArray,sudoAnswer)
      guess1s= Mastermind.find1s(output,sudoGuessArray,sudoAnswer)
      pegs= Mastermind.find0s(guess1s,sudoAnswer)
      i=0
      while i<pegs.length
        puts Mastermind.getOutput(pegs[i])
        i+=1
      end
      Won.wonTest
      if !Setup.getWon
        Outputs.wrong
      end
    end
  end
end