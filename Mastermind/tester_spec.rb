
require "rpsec"


#colors
#1=red
#2=green
#3=blue
#4=yellow
#5=brown
#6=orange
#7=black
#8=white




describe Mastermind do
  [ [[0,0,0,0],[0,0,0,0],[0,0,0,0]]

  ].each do |guess, answer,output|

    it  "should output #{cents}" do
      Mastermind.try(guess,answer).should==output
    end
  end
end