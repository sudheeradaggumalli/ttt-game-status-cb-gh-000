# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[["0","1","2"],["3","4","5"],["6","7","8"],["0","3","6"],["1","4","7"],["2","5","8"],["0","4","8"],["2","4","3"]]

def won(board)
  for each win in WIN_COMBINATIONS
        win_pos1=win[0]
        win_pos2=win[1]
        win_pos3=win[2]
        if board[win_pos1]=="X" && board[win_pos2]=="X" && board[win_pos3]=="X" 
          win
        else
          false
        end
  end
end
