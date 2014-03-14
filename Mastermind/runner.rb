require './mastermind'
require './outputs'
require './Setup'
require './Inputs'
require './gameLoop'
require './Clones'

class Runner
  Output.welcome
  Setup.start
  GameLoop.gameLoop
end