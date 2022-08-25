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

p fibs(5)