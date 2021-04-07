require 'board'
require 'player'

class TicTacToe
  def initialize(player_x,  player_y)
    @board = Board.new
    @player_x = player_x
    @player_o = player_o
    @current_player = random_player
  end

  def play

    
  end

  def validate_move(move)
    if @board.flatten[move - 1] == nil
      assign_move(move)
    else
      #display invalid input and ask for input again
      false
    end


  end

  def assign_move(move)
    column_index = (move - 1) % 3
    row_index = (move - 1) / 3
    board[row_index][column_index] = @current_player.symbol
  end

  def game_over? 
    @board.check_winner?(@current_player.symbol) || 
    @board.check_tie(@current_player.symbol)
  end

  def switch_players
    if current_player == @player_x
      @current_player = @player_o
    else
      @current_player = @player_x
    end
  end
end
