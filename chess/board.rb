
require_relative 'piece.rb'
require_relative 'display.rb'

class Board
attr_accessor :board

  def initialize(board = Array.new(8) { Array.new(8) })
    @board = make_starting_grid(board)
  end

  def [](position)
    row , col = position
    @board[row][col]
  end

  def []=(position, value)
    row , col = position
    @board[row][col] = value
  end

  def move_piece(start_pos, end_pos)
    raise "Position not avaiable" if @board[start_pos] == NullPiece  || !end_pos.nil?
  end

  def make_starting_grid(board)
    board.each_with_index do |row, row_idx|
      row.each_with_index do |col, col_idx|
        #board[row_idx][col_idx] = NullPiece.new unless row_idx == 0 || row_idx == 1 || row_idx == 6 || row_idx == 7
        board[row_idx][col_idx] = Piece.new(:black,@board,[row_idx, col_idx]) if row_idx == 0 || row_idx == 1 || row_idx == 6 || row_idx == 7
      end
    end
    board
  end

  def valid_pos?(new_pos)
    if (new_pos[0] < 8 && new_pos[0] >= 0) && (new_pos[1] < 8 && new_pos[1] >= 0)
      return true
    else
      return false
    end
  end

  def checkmate?()

  end

  def find_king(king)
  end

end
