module Slideable

    HORIZONTAL_DIRS=  [[0, 1], [1, 0], [-1, 0], [0, -1]]
    DIAGONAL_DIRS=   [[1, 1], [-1, -1], [-1, 1], [1, -1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end
    

    def diagonal_dirs
        DIAGONAL_DIRS
    end


    def moves
        all_moves = []
        possible_moves = moves_dirs

        possible_moves.each do |ele|
            all_moves += grow_unblocked_moves_in_dir(ele[0],ele[1])
        end

        all_moves
    end

    private

    def moves_dirs() #overwritten by subclass
        #overwritten
    end

    def grow_unblocked_moves_in_dir(dx,dy)
        moves_in_dir=[]
        
        position = @pos
        directions_arr = self.moves_dirs 


        until position[0] > 8 || position[0] < 0 || dy > 8 || dy < 0 ||  @board[dx, dy] != nil
                     
            moves_in_dir << [position[0],position[1]]
            position[0] += dx
            position[1]+= dy
        
        end

        moves_in_dir[1..-1]
    end 
end