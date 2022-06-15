require "byebug"
module Slideable

    HORIZONTAL_DIRS =  [[0, 1], [1, 0], [-1, 0], [0, -1]]
    DIAGONAL_DIRS =   [[1, 1], [-1, -1], [-1, 1], [1, -1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end
    

    def diagonal_dirs
        DIAGONAL_DIRS
    end


    def moves
        all_moves = []
        possible_moves = move_dirs
        possible_moves.each do |ele|
            all_moves.concat(grow_unblocked_moves_in_dir(ele[0],ele[1]))
        end

        all_moves
    end

    private

    def move_dirs #overwritten by subclass
        #overwritten
    end

    def grow_unblocked_moves_in_dir(dx,dy)
        moves_in_dir=[]        
        x, y = pos
        x += dx
        y += dy

        until x > 7 || x < 0 || y > 7 || y < 0  || @board[x][y]!=NullPiece.instance #||  #@board[position[0]][position[1]] == nil
            moves_in_dir << [x,y]
            x += dx
            y += dy
        end

        moves_in_dir
    end 
end