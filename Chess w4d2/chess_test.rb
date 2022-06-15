require_relative "board"
a = Board.new



a.board.each{ |row| puts row.join(" ")}
p a.board[6][0].moves

p a.board[1][0].color
p a.board[0][3].color
# a.board.each {|row| puts row.join(" ")}
# p a.board[7][0].color


