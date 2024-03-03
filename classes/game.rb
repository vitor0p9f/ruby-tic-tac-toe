# frozen_string_literal: true

require_relative 'player'
require_relative 'board'

# Represents a instance of tic-tac-toe game
class Game
  def initialize
    @players = [].push(Player.new('X'), Player.new('O'))
    @board = Board.new
    @current_player = ['Player 1', 'Player 2'].sample
    @win_or_tie = false
    @selected_positions = []
    @winner = ''
    @moves = 0
  end

  def start
    puts "Player 1 is X and player 2 is O\n\n"

    @board.draw

    loop do
      break if @win_or_tie

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

      @moves += 1

      check_win_or_tie

      @selected_positions.push(position)

      @current_player = if @current_player == 'Player 1'
                          'Player 2'
                        else
                          'Player 1'
                        end
    end

    puts "Winner: #{@winner}"
  end

  private

  def check_win_or_tie
    first_column = []
    second_column = []
    third_column = []

    @board.shapes_arrangement.map do |line|
      @winner = 'Player 1' if line.all? { |shape| shape == @players[0].shape }

      @winner = 'Player 2' if line.all? { |shape| shape == @players[1].shape }

      line.map.with_index do |shape, index|
        case index
        when 0
          first_column << shape
        when 1
          second_column << shape
        else
          third_column << shape
        end
      end
    end

    [first_column, second_column, third_column].map do |column|
      @winner = 'Player 1' if column.all? { |shape| shape == @players[0].shape }
      @winner = 'Player 2' if column.all? { |shape| shape == @players[1].shape }
    end

    @winner = 'tie' if @winner.empty? && @moves == 9

    @win_or_tie = true unless @winner.empty?
  end

  def restart
    @board = Board.new
    @current_player = ['Player 1', 'Player 2'].sample
    @win_or_tie = false
    @selected_positions = []
    @winner = ''
    @moves = 0

    start
  end
end
