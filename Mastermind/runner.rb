require './mastermind'
require './outputs'
require './Setup'
require './Inputs'
require './gameLoop'
require './won'
require './Clones'

class Runner
  Outputs.welcome
  Setup.start
  GameLoop.gameLoop
end