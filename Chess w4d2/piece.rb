# require_relative "null_piece"
class Piece

    def initialize(color, pos)
        @color= :color
        @pos = pos
    end

    def to_s
        symbol.to_s
    end

    def empty?

    end

    def valid_moves

    end

    def pos=(val)


    end

    def symbol 
        "\u2659"
    end

    private

    def move_into_check?(end_pos)


    end
end