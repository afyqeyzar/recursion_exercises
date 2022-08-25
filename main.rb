def fibs(n)
  fibo_seq = [0, 1]
  prev_num = 0
  next_num = 1
  i = 2
  if n == 0
    fibo_seq = [0]
  elsif n == 1
    fibo_seq = [0, 1]
  else
    while i < n
      third = prev_num + next_num
      fibo_seq << third
      prev_num = next_num
      next_num = third
      
      i += 1
    end
  end
  fibo_seq
end

#p fibs(5)

def fibs_rec(n)
  fibo_seq = [0]
  if n == 2
    fibo_seq << 1
    1
  elsif n <= 1
    0
  else
    third = fibs_rec(n-1) + fibs_rec(n-2)
    fibo_seq << third
    third
  end
  fibo_seq
end

p fibs_rec(3)