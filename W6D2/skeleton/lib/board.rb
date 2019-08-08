


class Board
  attr_accessor :cups

  def initialize(name1, name2)

    @cups = [#0,1,2,3,4,5, Side 1

      [], [], [], [], [], [],
      
      #6 Store 1
      [],
      
      
      #7,8,9,10,11,12, Side 2
      [], [], [], [], [], [],
      
      #13 Store 2
      []      
    ]

    cups.each_with_index do |cup, idx|
      if idx != 6 && idx != 13
        4.times {cup << :stone} 
      end
    end

  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)

    raise 'Invalid starting cup' if start_pos < 0 || start_pos > 13

    raise 'Starting cup is empty' if cups[start_pos].empty?

  end

  def which_player(name)



  end

  def make_move(start_pos, current_player_name)
    
    hand = []
    
    until cups[start_pos].empty?
      stone = cups[start_pos].shift
      hand << stone
    end

    until hand.empty?
      (start_pos+1...cups.length).each do |idx|
        if start_pos < 5 && idx != 6
          cup[idx] << hand.shift
        elsif start_pos > 7 && idx != 13
        end
      end
    end

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
