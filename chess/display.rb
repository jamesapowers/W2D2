require 'colorize'
require_relative 'cursor.rb'
require_relative 'board.rb'

class Display
  def initialize
    @cursor = Cursor.new(@cursor_pos, @board)
  end

  def move(new_pos) #this is move for the cursor
  #  print "Print "
  #  new_pos = gets.chomp #"w"
  #  @cursor = Cursor(new_pos, @board)
  end

  def render
    @board.each do |row|
      puts " "
      row.each do |col|
        print @board[row, col]
      end
    end
  end



  render


end
