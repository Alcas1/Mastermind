require './mastermind'


class Run
  turns=0
  won=false
  lost=false
  allGuesses=[]
  puts("Welcome to Mastermind. How long is the Code?")
  codeLength=gets().to_i

  answer=Mastermind.randomBoard(codeLength)
  while !won && !lost
    turns+=1
    count=allGuesses.length
    guessArray=[]
    guessLength=codeLength

    while count>0 do count-=1
    puts(allGuesses[count].to_s)
    end
    while guessLength>0
      puts("Color ##{guessArray.length+1}")
      String color=gets()
      while Mastermind.colorGet(color)==0
        puts("Input a color")
        color=gets()
      end
      guessLength-=1
      guessArray << Mastermind.colorGet(color)
    end
    allGuesses<<guessArray
    puts(Mastermind.try(guessArray,answer).to_s)
    puts(Mastermind.winTest(turns,Mastermind.try(guessArray,answer),answer))

    if Mastermind.winTest(turns,Mastermind.try(guessArray,answer),answer)=="You Win!"
      won=true
      puts("You Win!")
    elsif Mastermind.winTest(turns,Mastermind.try(guessArray,answer),answer)=="You Lost"
      lost=true
      puts("You Lose!")
    end
  end
end