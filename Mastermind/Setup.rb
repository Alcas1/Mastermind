require './mastermind'
require './outputs'
require './Inputs'
require './gameLoop'



class Setup
  attr_accessor :turns,:won,:lost,:allGuesses,:codeLength,:guessArray,:guessLength,:answer
  def self.start
    @turns=0
    @won=false
    @lost=false
    @allGuesses=[]
    @codeLength=Inputs.input.to_i
    @answer=Mastermind.randomBoard @codeLength
  end
  def self.getTurns
    @turns
  end
  def self.setTurns amount
    @turns+=amount
  end
  def self.getWon
    @won
  end
  def self.setWon answer
    @won=answer
  end
  def self.getLost
    @lost
  end
  def self.setLost answer
    @lost=answer
  end
  def self.getAnswer
    @answer
  end
  def self.getCodeLength
    @codeLength
  end

  def self.getGuessLength
    @guessLength
  end
  def self.setGuessLength amount
    @guessLength+=amount
  end

  def self.getAllGuesses
    @allGuesses
  end

  def self.getGuessArray
    @guessArray
  end
  def self.addToGuessArray item
    @guessArray<< item
  end
  def self.addToAllGuesses item
    @allGuesses << item
  end

  def self.gameLoop
    @guessArray=[]
    @guessLength=@codeLength
  end
end