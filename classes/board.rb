# frozen_string_literal: true

# Represents a tic-tac-toe board
class Board
  TEMPLATE = <<~BOARD
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

  private

  attr_accessor :state

  def update_shapes_arrangement(shape, position)
    case position
    when 1..3
      @shapes_arrangement[0][position - 1] = shape
    when 4..6
      @shapes_arrangement[1][position - 4] = shape
    when 7..9
      @shapes_arrangement[2][position - 7] = shape
    end
  end

  public

  attr_reader :shapes_arrangement

  def initialize
    @shapes_arrangement = [['', '', ''],
                           ['', '', ''],
                           ['', '', '']]

    @state = TEMPLATE
  end

  def draw
    puts @state.encode('utf-8')
    puts
  end

  def insert_shape(shape, position)
    @state = @state.gsub(/#{Regexp.escape(position.to_s)}/, shape)

    update_shapes_arrangement(shape, position)

    draw
  end
end
