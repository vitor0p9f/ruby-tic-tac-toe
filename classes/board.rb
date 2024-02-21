# frozen_string_literal: true

# Represents a tic-tac-toe board
class Board
  private

  attr_accessor :boards_state, :board_template, :current_player, :current_board

  public

  def initialize(players)
    @players = players

    @board_template = <<~BOARD
      \t      │     │
      \t   1  │  2  │  3
      \t      │     │
      \t ─────┼─────┼─────
      \t      │     │
      \t   4  │  5  │  6
      \t      │     │
      \t ─────┼─────┼─────
      \t      │     │
      \t   7  │  8  │  9
      \t      │     │
    BOARD

    @board_state = [['', '', ''],
                    ['', '', ''],
                    ['', '', '']]

    @current_board = @board_template
  end

  def draw
    puts @current_board.encode('utf-8')
    puts
  end

  def insert_shape(shape, position)
    @current_board = @current_board.gsub(
      /#{Regexp.escape(position.to_s)}/,
      shape
    )

    draw
  end
end
