class Game
  def initialize(game_name)
    @game_name = game_name
    @player_one = Player.new('Player 1')
    @player_two = Player.new('Player 2')
  end

  def start
    puts "New Game"
    which_player = @player_one
    
    loop do
      puts '************************************************'
      puts "<< lives remaining: P1:#{@player_one.lives}/3     vs     P2:#{@player_two.lives}/3 >>"
      puts "#{which_player.name}'s turn!"
      new_round(which_player)
      which_player == @player_one ? which_player = @player_two : which_player = @player_one
    end
  end
  
  def new_round(player)
    newQuestion = Question.new
    newQuestion.q
    if $stdin.gets.chomp.to_i === newQuestion.firstnum + newQuestion.secondnum
      puts "Nice work!"
    else 
      puts "Aw incorrect :("
      player.reduce_life
    end
    player.check_score
  end

end