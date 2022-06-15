require_relative "piece"
require_relative "null_piece"
require_relative "chess.rb"
class Board
    attr_reader :board

    []
    def initialize
        @board = Array.new(8) {Array.new(8)}
        @board.each_with_index do |ele, idx|
            ele.each_with_index do |ele_0, idx_0|
                if  idx == 1 
                    @board[idx][idx_0] = Pawn.new("black",@board, [idx,idx_0])
                elsif idx==6
                    @board[idx][idx_0] = Pawn.new("white",@board, [idx,idx_0])
                else
                    @board[idx][idx_0] = NullPiece.instance
                end
            end
        end

        arr_black=[Rook.new("black",@board, [0,0]), Knight.new("black",@board, [0,1]), Bishop.new("black",@board, [0,2]), King.new("black",@board, [0,3]), Queen.new("black",@board, [0,4]), Bishop.new("black",@board, [0,5]), Knight.new("black",@board, [0,6]), Rook.new("black",@board, [0,7])]
        arr_white=[Rook.new("white",@board, [7,0]), Knight.new("white",@board, [7,1]), Bishop.new("white",@board, [7,2]), King.new("white",@board, [7,3]), Queen.new("white",@board, [7,4]), Bishop.new("white",@board, [7,5]), Knight.new("white",@board, [1,6]), Rook.new("white",@board, [7,7])]
        @board[0]=arr_black
        @board[-1]=arr_white
    end

    def[](pos)
        @board[pos[0]][pos[1]]
    end


    def []=(pos,val)
        @board[pos[0]][pos[1]]=val
    end

    def move_piece(start_pos, end_pos)
        raise "out of bounds" if (start_pos[0] > 7 || start_pos[0] < 0) || (start_pos[1] < 0 || start_pos[1] > 7)
        raise "no piece here" if @board[start_pos[0]][start_pos[1]].is_a?(NullPiece)
        raise "out of bounds" if (end_pos[0] > 7 || end_pos[0] < 0) || (end_pos[1] < 0 || end_pos[1] > 7)
        piece_in_hand = @board[start_pos[0]][start_pos[1]]
        @board[start_pos[0]][start_pos[1]] = nil
        @board[end_pos[0]][end_pos[1]] = piece_in_hand
        "piece successfully moved"
    end


end