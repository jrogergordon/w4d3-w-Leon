# require_relative "null_piece"
require_relative 'slideable'
require_relative 'steppable'
require_relative 'board.rb'
class Piece

    def initialize(color, board, pos)
        @color= color
        @pos = pos
        @board=board
    end

    attr_reader :color

    attr_reader :pos

    def to_s
        symbol.to_s
    end

    def empty?

    end

    def valid_moves
        move_dirs
    end

    def pos=(val)


    end

    def symbol

    end

    private

    def move_into_check?(end_pos)


    end
end