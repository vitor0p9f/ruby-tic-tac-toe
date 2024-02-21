# frozen_string_literal: true

require_relative 'player'
require_relative 'board'

# Represents a instance of tic-tac-toe game
class Game
  def initialize
    @players = [].push(Player.new('X'), Player.new('O'))
    @board = Board.new
    @moves = 0
    @current_player = ''
  end

  def start; end

  private

  def check_for_winner; end

  def restart; end
end
