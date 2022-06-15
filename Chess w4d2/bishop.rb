class Bishop < Piece

    include Slideable

    def symbol
        if @color == "black"
            return "\u2657" 
        else
            return "\u265D"	
        end
     end

 
 
     private
     def move_dirs
         DIAGONAL_DIRS
     end
 
 end