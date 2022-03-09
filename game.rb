require './player'

class Game

  attr_reader :report_life, :players, :current_player

  def initialize (pOne, ptwo)
    @players = [pOne, ptwo]
    @current_index = 0
    @current_player = @players[@current_index]
  end
  
  def reduce
    @current_player.life -= 1
    if @current_player.life == 0
      p " #{@current_player.name}, game over " 
    end
  end
  
  def switch
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

  def lifeStats
    puts "Game over : : Player One stats: #{@players[0].life}  Player Two stats:#{@players[1].life}"
  end
  
end