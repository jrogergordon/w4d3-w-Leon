class Rook < Piece
    include Slideable

    def symbol
        if @color=="white"
            return "\u265C"
        else
            return "\u2656" 
        end
    end


    private
    def move_dirs
        HORIZONTAL_DIRS
    end

end

