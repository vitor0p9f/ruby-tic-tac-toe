# frozen_string_literal: true

# Represents a tic-tac-toe player
class Player
  attr_reader :shape

  def initialize(shape)
    @shape = shape
  end
end
