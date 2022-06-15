class Queen < Piece

    include Slideable

    def symbol
        if @color=="white"
            return "\u265B"
        else
            return "\u2655" 
        end
    end


    private
    def move_dirs
        HORIZONTAL_DIRS + DIAGONAL_DIRS
    end

end
