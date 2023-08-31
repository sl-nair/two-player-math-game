class Question 
  attr_reader :firstnum, :secondnum

  def initialize
    @firstnum = rand(1..100)
    @secondnum = rand(1..100)
  end

  def q
    puts "what is the sum of #{@firstnum} and #{@secondnum}"
  end

end