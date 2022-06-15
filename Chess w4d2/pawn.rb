class Pawn < Piece

    def symbol
        if @color == "white"
            return "\u265F"
        elsif @color == "black"
            return "\u2659"
        end
    end

    def moves
        forward_steps + side_attacks
    end

    private
    def at_start_row?
        if pos[0] == 1 && color== "black" 
            return true
        elsif pos[0] == 6 && color == "white"
            return true
        end
        false
    end

    def forward_dir 
        if color == "black"
            return 1
        elsif color == "white"
            return -1
        end
    end

    def forward_steps
        x,y = pos
        move = forward_dir
        possible_moves=[]
        if at_start_row? && @board[x+move][y]==NullPiece.instance
            possible_moves << [x + move + move,y] if @board[x + move + move][y]==NullPiece.instance 
            possible_moves << [x + move, y]
        end

        if !at_start_row? && @board[x+move][y]==NullPiece.instance
            possible_moves << [x+move,y]
        end

       possible_moves
    end

    def side_attacks
        move = forward_dir
        side_moves = []
            if @board[pos[0]+move][pos[1]+1] != NullPiece.instance && @board[pos[0]+move][pos[1]+1].color != self.color
                side_moves << [pos[0]+move,pos[1]+1]
            end
            if @board[pos[0]+move][pos[1]-1] != NullPiece.instance && @board[pos[0]+move][pos[1]-1].color != self.color
                side_moves << [pos[0]+move,pos[1]-1]
            end
        side_moves
    end

end