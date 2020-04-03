# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [0,4,8], #Cross1
  [6,4,2]  #Cross2
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if (board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X")  || (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O") 
      return combo
    end
  end
  return false
end

def full?(board)
    if board.count { |i| i == "X" || i == "O"} == 9 
        true
    else
        false
    end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || full?(board)
    return true
  else
    false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else
    nil
  end
end


