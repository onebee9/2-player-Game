require './game'

class Question

  attr_reader :answer

  def initialize 
    @answer = -1
  end

  def createQuestion
    data = Random.new
    varOne = data.rand(100) 
    varTwo = data.rand(100)  
    @answer = varOne * varTwo
    "Here's a riddle, What is #{varTwo} * #{varOne} ? "
  end

end