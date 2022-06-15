require_relative "piece"
require_relative "null_piece"
class Board
    attr_reader :board
    def initialize
        @board = Array.new(8) {Array.new(8)}
        @board.each_with_index do |ele, idx|
            ele.each_with_index do |ele_0, idx_0|
                if idx == 0 || idx == 7 || idx == 1 || idx == 6
                    @board[idx][idx_0] = Piece.new("white,", [idx,idx_0])
                else
                    @board[idx][idx_0] = NullPiece.instance
                end
            end
        end
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