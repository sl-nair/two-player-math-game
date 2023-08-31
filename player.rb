class Player
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def check_score
    if @lives == 0
      puts "#{@name} has died! Game over :("
      exit(0)
    end
  end

  def reduce_life
    @lives -= 1
  end


end