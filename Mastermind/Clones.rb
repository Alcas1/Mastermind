require './mastermind'
require './Inputs'
require './outputs'
require './Setup'
require './won'
require './gameLoop'
class MakeClone
  def self.ofGuessArray
    Setup.getGuessArray.clone
  end
  def self.ofAnswer
    Setup.getAnswer.clone
  end


end