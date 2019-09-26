class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

  def play
    self.take_turn until self.game_over
    self.game_over
    self.game_over_message
    self.reset_game
   
  end

  def take_turn()
    self.show_sequence
    self.require_sequence
    puts self.round_success_message
    self.sequence_length += 1
  end

  def show_sequence
    self.sequence_length.times {self.add_random_color}
    
    puts self.seq.dup

    sleep (5)

    system("clear")
    

  end

  def require_sequence
    puts "Input the correct sequence!"
    guess = gets.chomp.split(" ")
    if guess != self.seq
      self.game_over = true
      return false
    else
      return true
    end
  end

  def add_random_color
    color = COLORS.sample
    seq << color
  end

  def round_success_message
    return "Good job!"
  end

  def game_over_message
    puts "You missed! Game over!"
  end

  def reset_game
    self.seq = []
    self.sequence_length = 1
    self.game_over = false
  end

end
