class TicTacToe 

attr_accessor :board


  def initialize 
    @board = [ " ", " ", " ", " ", " ", " ", " ", " ", " " ]
    @@board = @board 
  end
  
  WIN_COMBINATIONS = [ 
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    
    [2, 4, 6],
    [0, 4, 8]
    
    ]

def input_to_index(input)
  input.to_i - 1
end

  def welcome
    puts "Weclome to Tic Tac Toe!"
  end
  
#these need to return booleans   
   
 
  #these need to return booleans

  def display_board #(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  
  def input_to_index(user_input)
    user_input.to_i - 1
  end
  
#not sure why the below worked 
def move(index, player_token = X)
  board[index] = player_token
end

def position_taken?(index)
  @board[index] != " " && @board[index] != ""
end

 def valid_move?(position)
  !position_taken? && position.between?(0,8)
  end

  def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
    end
  end

  def play(board)
    loop do 
      counter = counter + 1
      if counter >= 9 
        break
      end 
    end
  end

  def turn_count
   board.count{|token| token == "X" || token == "O"}
  end 
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
  def won?(board)
     board.include(WIN_COMBINATIONS)
  end 
   
  def full?(board)
     board.any(" ")
  end 
 
  def draw?
     if full? == true && won? == false
     end
  end 
 
  def over?
     if draw? || won? || full?
       puts "Game Over"
     end 
  end

  def winner(board)
    if WIN_COMBINATIONS.all? == "X"
      puts "Winner is Player X"
    else 
      puts "Winner is Player O"
    end
  end
  
  
end 