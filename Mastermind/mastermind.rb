module Mastermind

  def self.randomBoard(codeLength)
    finishedBoard=[]
    while codeLength>0
      finishedBoard<< (rand(8)+1)
      codeLength-=1
    end
    finishedBoard
  end
  def self.try(guess,answer)
    output =[]
    sudoGuess=guess
    colors=[0,0,0,0,0,0,0,0,0]
    count=sudoGuess.length

    while count>0
      count-=1
      if sudoGuess[count]==answer[count]
        output<<2
        answer[count]=0
        sudoGuess[count]=0
      end
    end
    if output.length==sudoGuess.length
      return output
    end
    count=answer.length
    while count>0
      count-=1
      if answer[count] != 0
        colors[answer[count]]+=1
      end
    end
    #return colors
    count=answer.length
    while count>0 do count-=1
    if colors[sudoGuess[count]] > 0
      colors[sudoGuess[count]]-=1
      output << 1
    end
    end
    while output.length < sudoGuess.length
      output<<0
    end
    output.sort().reverse



  end
  def self.winTest(turns,output,answer)
    if output==answer
      return "You Win!"

    elsif turns==10
      return "You lost"

    else
      return "Wrong"
    end
  end

  def self.colorGet(color)
    if color=="red\n"
    return 1
    elsif color=="green\n"
    return 2
    elsif color=="blue\n"
    return 3
    elsif color=="yellow\n"
    return 4
    elsif color=="brown\n"
    return 5
    elsif color=="orange\n"
    return 6
    elsif color=="black\n"
    return 7
    elsif color=="white\n"
    return 8
    else
    return 0
    end

  end

  def self.getOutput(pegs)
    if pegs==2
    return "Red peg"
    elsif pegs==1
    return "White peg"
    else
    return "No peg"
    end


  end

end
