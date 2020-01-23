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

def position_taken?(index) #so it will be checking index values.
   index = "" || index != "" #Either the index is wrong or the placement is wrong on the ARRAY fromt he output -1 OR if the posituon takes up space  
   index  
end

 def valid_move?(position)
    if between?(0,8) == false
    
    end
  end

  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
    else
      turn(board)
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

  def turn_count(board)
    puts (turn_count)
    counter = 0 
    while count <= board.length 
      counter += 1 
    end
    if counter >=9
      puts "End of Game"
    end
  end 
  
  def current_player(board)
    current_player.even?
    if true
      current_player = "O"
    else 
    end
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