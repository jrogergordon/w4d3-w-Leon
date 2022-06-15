class King < Piece

    def symbol
        if @color=="white"
            return "\u265A"
        else
            return "\u2654" 
        end
    end
end