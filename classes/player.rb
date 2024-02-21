# frozen_string_literal: true

# Represents a tic-tac-toe player
class Player
  attr_reader :shape

  def initialize(shape)
    @shape = shape
  end

  def read_position(selected_positions)
    position = gets.to_i

    loop do
      unless (1..9).include?(position)
        print 'This isn\'t a valid position, please, choose again: '
        position = gets.to_i
        next
      end

      if selected_positions.include?(position)
        print 'This position has already been chosen, please choose another one: '
        position = gets.to_i
        next
      end

      break
    end

    position
  end
end
