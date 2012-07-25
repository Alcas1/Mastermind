require './mastermind'
require './outputs'
require './Setup'
require './Inputs'
require './gameLoop'
require './won'

class Runner
  Outputs.welcome
  Setup.start
  GameLoop.gameLoop
end