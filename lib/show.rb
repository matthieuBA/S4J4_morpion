class Show
  def show_board(board)
    @board=board
    @board.each_with_index do |element,i|
      if element == "X"
        @board[i]="\u{274C}"
      end
    end
    @board.each_with_index do |element,i|
      if element == "O"
        @board[i]="\u{1F518}"
      end
    end
    sep="||".colorize(:green)
    ligne="-----------------".colorize(:green)
    puts
    puts " "*30+" #{@board[0]} #{sep} #{@board[1]} #{sep} #{@board[2]} "
    puts " "*30+ligne
    puts " "*30+" #{@board[3]} #{sep} #{@board[4]} #{sep} #{@board[5]} "
    puts " "*30+ligne
    puts " "*30+" #{@board[6]} #{sep} #{@board[7]} #{sep} #{@board[8]} "
    puts
  end
end
