#WIN_COMBINATIONS
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
  ]
  
  #display_board
  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  
  #input_to_index
  def input_to_index(user_input)
    user_input.to_i - 1
  end
  
  #move
  def move(board,user_index,current_player)
    board[user_index] = current_player
  end
  
  #position_taken?
  def position_taken?(board,user_index)
    board[user_index] == "X" || board[user_index] == "O"
  end
  
  #valid_move?
  def valid_move?(board,user_index)
    user_index.between?(0,8) && !position_taken?(board,user_index)
  end
  
  #turn
    def turn(board)
      puts "Please choose a number between 1-9:"
      user_input = gets.strip
      if valid_move?(board,user_index)
        move(board,user_index,current_player)
      else
        turn(board)
      end
    end
  
      
    