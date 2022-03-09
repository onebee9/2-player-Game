# Program main entrypoint
require './game'
require './player'
require './question'

#Promt players and get input
p "Whats player one's name?"
firstPlayer = gets.chomp.to_s
p "Whats player two's name? "
secondPlayer = gets.chomp.to_s
playerOne = Player.new(firstPlayer)
playerTwo = Player.new(secondPlayer)

# set current player
game = Game.new(playerOne, playerTwo)

while game.players[0].life > 0 and game.players[1].life > 0 do
  # generate question and answer
  p "----------Next game ------------"
  question = Question.new
  p "#{game.currentPlayer.name}: #{question.createQuestion}"
  answer = question.answer

  # prompt for answer
  input = gets.chomp.to_i

  # validate answer and reduce life if invalid
  if (input != answer)
    game.reduce
  end

  #life status
  game.lifeStats

  # change turn
  game.switch
end