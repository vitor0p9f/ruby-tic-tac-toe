# frozen_string_literal: true

# Represents a tic-tac-toe board
class Board
  private

  attr_accessor :boards_state, :board_template

  public

  def initialize(players)
    @players = players

    @board_template = <<~BOARD
      \t 01111│02222│03333
      \t 11111│12222│13333
      \t 21111│22222│23333
      \t ─────┼─────┼─────
      \t 04444│05555│06666
      \t 14444│15555│16666
      \t 24444│25555│26666
      \t ─────┼─────┼─────
      \t 07777│08888│09999
      \t 17777│18888│19999
      \t 27777│28888│29999
    BOARD
  end

  def draw
    puts board_template.encode('utf-8').gsub(/[0-9]/, ' ')
  end
end
