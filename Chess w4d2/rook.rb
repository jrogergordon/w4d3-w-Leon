class Rook < Piece
    include Slideable

    def symbol
       "\u2656"
    end


    private
    def move_dirs
        HORIZONTAL_DIRS
    end

end

