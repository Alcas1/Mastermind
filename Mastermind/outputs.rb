require './mastermind'

class Outputs
  def self.guessesDisplay(allGuesses)
    puts allGuesses
  end
  def self.welcome
    puts "Welcome to Mastermind. How long is the Code?"
  end
  def  self.win
    puts "You Win!"
  end
  def self.lose
    puts "You Lose!"
  end
  def self.inputColor
    puts "Input a Color:1-8"
  end
  def self.colorNumber(length)
    puts "Color##{length}"
  end
  def self.won?(answer)
    puts answer
  end
  def self.pegs(which)
    puts which
  end
  def self.wrong
    puts "wrong"
  end
end