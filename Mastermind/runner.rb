require './mastermind'
require './outputs'
require './Setup'
require './Inputs'
require './gameLoop'
require './test_for_win'
require './Clones'

class Runner
  Outputs.welcome
  Setup.start
  GameLoop.gameLoop
end