# frozen_string_literal: true

# Represents a tic-tac-toe board
class Board
  private

  attr_accessor :board_template, :current_board

  def update_board_state(shape, position)
    case position
    when 1..3
      @board_state[0][position - 1] = shape
    when 4..6
      @board_state[1][position - 4] = shape
    when 7..9
      @board_state[2][position - 7] = shape
    end
  end

  public

  attr_reader :board_state

  def initialize
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

    update_board_state(shape, position)

    draw
  end
end
