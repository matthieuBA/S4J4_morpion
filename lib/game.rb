class Game
  attr_accessor :case_played ,:board, :user, :count_O_victory, :count_X_victory, :count_ex_aequo_victory 
  @@count_O_victory=0
  @@count_X_victory=0
  @@count_ex_victory=0
  def initialize
    system("clear")
    @user=[]
    puts "entrer le nom du joueur 1"
    print ">"
    us=gets.chomp
    if us.length>20
    puts "entrer le nom du joueur 1(moins de 20 chars"
    print ">"
    us=gets.chomp
    end
    user1 = Player.new(us)
    @user << user1.name
    puts "entrer le nom du joueur 2"
    print ">"
    us=gets.chomp
    if us.length>20
    puts "entrer le nom du joueur 2(moins de 20 chars"
    print ">"
    us=gets.chomp
    end
    user2 = Player.new(us)
    @user << user2.name

    return user
    
  end

  def turn(game)
    tab_sign=[]
    board=Board.new
    @board=board
    system("clear")
    show=Show.new
    show.show_board(@board.sign)
    
    while game.board.victory=="0"
      game.board.play_turn(game.user)
    end
    if game.board.victory.to_s.include?("O")
      @@count_O_victory+=1
      puts "victory O"
    elsif game.board.victory.to_s.include?("X")
      @@count_X_victory+=1
      puts "victory X"
    elsif game.board.victory.to_s.include?("ex-aequo")
      @@count_ex_victory+=1
    end
    puts 
    puts "#{user[0]}#{" "*(20-user[0].length)} with \u{1F518} won #{@@count_O_victory} times"
    puts "#{user[1]}#{" "*(20-user[1].length)} with \u{274C} won #{@@count_X_victory} times"
    puts "ex-aequo                         #{@@count_ex_victory} times"
    puts 

  end

  def victory
    if @@count_X_victory < @@count_O_victory
      return "\n\n#{user[0]} IS THE WINNER \n\n#{user[0]} with \u{1F518} won #{@@count_O_victory-@@count_X_victory} more times than \u{274C}\n\nGAME OVER"
    elsif @@count_X_victory > @@count_O_victory
      return "\n\n#{user[1]} IS THE WINNER \n\n#{user[1]} with \u{274C} won #{@@count_X_victory-@@count_O_victory} more times than \u{1F518}\n\nGAME OVER"
    elsif @@count_X_victory == @@count_O_victory
      return "Perfect Egality on  #{@@count_X_victory+@@count_O_victory+@@count_ex_victory} matche(s)\n\nGAME OVER"
    end
  end
end
