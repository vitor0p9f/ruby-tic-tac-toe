# frozen_string_literal: true

# Represents a tic-tac-toe board
class Board
  def initialize(players)
    @players = players
  end

  def draw
    13.times do |number|
      if [0, 12].include?(number)
        puts
        next
      end

      if [4, 8].include?(number)
        print "\t"
        32.times do |number|
          if [10, 21].include?(number)
            print "\u{253C}".encode('utf-8')
          else
            print "\u{2500}".encode('utf-8')
          end
        end
        puts
      else
        puts "\t\t  \u{2502}\t     \u{2502}\t\t  ".encode('utf-8')
      end
    end
  end
end
