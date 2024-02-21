# frozen_string_literal: true

# Represents a tic-tac-toe player
class Player
  attr_reader :shape

  def initialize(shape)
    @shape = shape
  end

  def read_position
    position = gets.to_i

    while position < 1 || position > 9
      print 'This isn\'t a valid position, please, choose again: '
      position = gets.to_i
    end

    position
  end
end
