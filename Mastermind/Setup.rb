require './mastermind'
require './outputs'
require './Inputs'
require './gameLoop'



class Setup
  attr_accessor :turns,:won,:lost,:allGuesses,:guessArray,:guessLength,:answer
  def self.start
    @turns=0
    @won=false
    @lost=false
    @allGuesses=[]
    @answer=Mastermind.randomBoard 4
  end
  def self.getTurns
    @turns
  end
  def self.addTurns amount
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

  def self.getGuessLength
    @guessLength
  end
  def self.addGuessLength amount
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
    @guessLength=4
  end
end