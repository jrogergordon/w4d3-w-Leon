require_relative "board"
a = Board.new

a.board.each{ |row| puts row.join(" ")}
