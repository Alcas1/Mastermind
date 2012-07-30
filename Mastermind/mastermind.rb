class Mastermind

  def self.randomBoard(codeLength)
    finishedBoard=[]
    while codeLength>0
      finishedBoard<< (rand(8)+1)
      codeLength-=1
    end
    finishedBoard
  end
  def self.find2s guess,answer
    output =[]
    sudoGuess=guess

    count=sudoGuess.length

    while count>0
      count-=1
      if sudoGuess[count]==answer[count]
        output<<2
        answer[count]=0
        sudoGuess[count]=0
      end
    end
    output
  end
  def self.find1s guess2s,answer

    colors=[0,0,0,0,0,0,0,0,0]
    count=answer.length
    while count>0
      count-=1
      if answer[count] != 0
        colors[answer[count]]+=1
      end
    end

    count=answer.length
    while count>0 do count-=1
    if colors[guess2s[count]] > 0
      colors[guess2s[count]]-=1
      guess2s << 1
    end


    end
    guess2s
  end
  def self.find0s guess1s,answer
    while guess1s.length < answer.length
      guess1s<<0
    end
    guess1s.sort().reverse
  end
  def self.try(guess,answer)
    output =[]
    sudoGuess=guess
    count=sudoGuess.length
    while count>0
      count-=1
      if sudoGuess[count]==answer[count]
        output<<2
        answer[count]=0
        sudoGuess[count]=0
      end
    end
    colors=[0,0,0,0,0,0,0,0,0]
    count=answer.length
    while count>0
      count-=1
      if answer[count] != 0
        colors[answer[count]]+=1
      end
    end

    count=answer.length
    while count>0 do count-=1
    if colors[output[count]] > 0
      colors[output[count]]-=1
      output << 1
    end
    end
    while output.length < answer.length
      output<<0
    end
    return output.sort().reverse
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


