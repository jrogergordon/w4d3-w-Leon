require_relative "piece.rb"
require "singleton"
class NullPiece < Piece
    include Singleton

    def initialize
        @color = nil
        @pos = nil
        @board = nil
    end

    def moves
    end

    def symbol
        "\u2800"
    end



end