class TicTacToe
  
  def initialize (board=nil)
    @board = board || Array.new(9, " ")
  end

   WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end  

  def input_to_index(input)
    index = input.to_i
    index = index - 1
  end
  
  def move (index, token="X")
    @board[index] = token
  end

  def position_taken?(index)
    !(@board[index] == " " || @board[index] == "")
  end
    
  def valid_move?(index)
    !position_taken?(index) && index.between?(0, 8)
  end
  
  def turn_count
    counter = 0
    @board.each do |count|
      if count == "O" || count == "X"
      counter += 1
      end
    end
    return counter
  end
  
  def current_player
    if turn_count % 2 == 0
      return "X"
   elsif turn_count % 2 != 0
      return "O"
    end
  end
  
  def turn
    puts "Please enter 1-9:"
    input=gets.chomp
    input_to_index(input)
    
    #if valid_move?(index)
    #  move(index)
     # display_board
    #  current_player
    #else
    #  turn
    #end
  end



#it "calls #input_to_index, #valid_move?, and #current_player" do
 #       allow($stdout).to receive(:puts)
  #      expect(game).to receive(:gets).and_return("5")
   #     expect(game).to receive(:input_to_index).and_return(4)
    #    expect(game).to receive(:valid_move?).and_return(true)
     #   expect(game).to receive(:current_player).and_return("X")






end





# rspec spec/01_tic_tac_toe_spec.rb