require './player'

class Game

  attr_reader :lifeStats, :players, :currentPlayer

  def initialize (pOne, pTwo)
    @players = [pOne, pTwo]
    @currentPlayer = @players[0]
  end
  
  def reduce
    @currentPlayer.life -= 1
    if @currentPlayer.life == 0
      p " #{@currentPlayer.name}, game over " 
    end
  end
  
  def switch
    if @currentPlayer == @players[0]
      @currentPlayer = @players[1]
    else
      @currentPlayer = @players[0]
    end
  end

  def lifeStats
    p"Game over : : Player One stats: #{@players[0].life} lives left  Player Two stats:#{@players[1].life} lives left"
  end
  
end