# frozen_string_literal: true

require_relative 'player'
require_relative 'board'

# Represents a instance of tic-tac-toe game
class Game
  def initialize
    @players = [].push(Player.new('X'), Player.new('O'))
    @board = Board.new
    @moves = 0
    @current_player = ['Player 1', 'Player 2'].sample
    @win_or_draw = false
    @selected_positions = []
  end

  def start
    puts "Player 1 is X and player 2 is O\n\n"

    @board.draw

    loop do
      break if @win_or_draw

      print "It's #{@current_player} time, choose a position: "

      position = if @current_player == 'X'
                   @players[0].read_position(@selected_positions)
                 else
                   @players[1].read_position(@selected_positions)
                 end

      @board.insert_shape(
        @current_player == 'Player 1' ? @players[0].shape : @players[1].shape,
        position
      )

      @selected_positions.push(position)

      @current_player = if @current_player == 'Player 1'
                          'Player 2'
                        else
                          'Player 1'
                        end
    end
  end

  private

  def check_for_winner; end

  def restart; end
end
