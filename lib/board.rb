class Board
  attr_accessor :board ,:sign, :boardcase
  @@count=0
  @@mouse = ""
  def initialize()
    @board=[]
    @boardcase=[]
    9.times do |i|
      @boardcase[i]=BoardCase.new(i)
      @board[i]=@boardcase[i].array
    end
    return @board
  end

  def sign
    @board.each do |element|
        element.to_s
      end
  end

  def play_turn(user)
    if @@count%2 == 0
      puts " "*20+"c'est le tour du #{user[0]}"
      print " "*20+">"
      @case_played=gets.chomp
      sign="X"
    else
      puts " "*20+"c'est le tour du #{user[1]}"
      print " "*20+">"
      @case_played=gets.chomp
      sign="O"
    end

    index_of_played_case=0
    correct=true

    if @case_played.length == 1
      case @case_played
      when "1"
        index_of_played_case=6
      when "2"
        index_of_played_case=7
      when "3"
        index_of_played_case=8
      when "4"
        index_of_played_case=3
      when "5"
        index_of_played_case=4
      when "6"
        index_of_played_case=5
      when "7"
        index_of_played_case=0
      when "8"
        index_of_played_case=1
      when "9"
        index_of_played_case=2
      else
        puts " "*20+"NON CORRECT VALUE"
        correct=false
      end
    elsif @case_played.length == 2
      @case_played=@case_played.split('')
        case @case_played[0]
          when "A"
            index_of_played_case=0
          when "B"
            index_of_played_case+=3
          when "C"
            index_of_played_case+=6
          else
          puts " "*20+"NON CORRECT VALUE"
          correct=false
        end
        if correct=true && @case_played[1].to_i <=3 && @case_played[1].to_i >=1 
          index_of_played_case+=(@case_played[1].to_i)-1
        end
    end

      if @boardcase[index_of_played_case].array =="  "
        @@count +=1
        @boardcase[index_of_played_case].update(index_of_played_case,sign)
        show=Show.new
        out=[]
        boardcase.each do |element|
          out << element.sign
        end
        system("clear")
        show.show_board(out)
      else 
        puts " "*20+"case non vide"
      end
  end

  def victory
    state="0"
    col=""
    3.times do |i|
      #LIGNES
      if ((@boardcase[0+(i*3)].array == "X" || @boardcase[0+(i*3)].array == "O") && @boardcase[0+(i*3)].array == @boardcase[1+(i*3)].array && @boardcase[0+(i*3)].array == @boardcase[2+(i*3)].array)
        state="victory of #{@boardcase[0+(i*3)].array} ligne : #{i+1}"
        break
      else 
        state="0"
      end

      #COLONNE
      if ((@boardcase[0+i].array == "X" || @boardcase[0+i].array == "O") && @boardcase[0+i].array == @boardcase[3+i].array && @boardcase[0+i].array == @boardcase[6+i].array)
        if i==0
          col="A"
        elsif i ==1
          col="B"
        elsif i ==2
          col="C"
        end

        state="victory of #{@boardcase[0+i].array} colonne : #{col}"
        break
      else 
        state="0"
      end

      if ((@boardcase[0].array == "X" || @boardcase[0].array == "O") && @boardcase[0].array == @boardcase[4].array && @boardcase[0].array == @boardcase[8].array)
        state="victory of #{@boardcase[0].array} diagonale 0 4 8"
        break
      else 
        state="0"
      end

      if ((@boardcase[6].array == "X" || @boardcase[6].array == "O") && @boardcase[6].array == @boardcase[4].array && @boardcase[6].array == @boardcase[2].array)
        state="victory of #{@boardcase[6].array} diagonale 6 4 2"
        break
      else 
        state="0"
      end
      remaining_played_times=0
      @boardcase.each do |element|
        remaining_played_times+=element.array.count(" ")
      end
      if remaining_played_times==0
        state="ex-aequo"
        break
      end
    end
    return state
  end
end


