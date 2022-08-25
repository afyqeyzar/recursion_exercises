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

# def fibs_rec(n)
#   fibo_seq = [0]
#   if n == 2
#     fibo_seq << 1
#     1
#   elsif n <= 1
#     0
#   else
#     third = fibs_rec(n-1) + fibs_rec(n-2)
#     fibo_seq << third
#     third
#   end
#   fibo_seq
# end

def fibs_rec(n)
  # base cases 0 and 1
  return [0] if n == 0
  return [0, 1] if n == 1

  array = fibs_rec(n - 1)
  # add the last two to form new elements
  array << array[-2] + array[-1]
end

#p fibs_rec(8)

def merge_sort(arr)
  if arr.length <= 1
    return arr
  end
  left = []
  right = []
  arr.each_with_index do |element, index|
    if index < (arr.length) / 2
      left << element
    else
      right << element
    end
  end

  left = merge_sort(left)
  right = merge_sort(right)

  p merge(left, right)
end

def merge(left, right)
  result = []

  while !left.empty? && !right.empty?
    if left[0] < right[0]
      result << left[0]
      left.delete(left[0])
    else
      result << right[0]
      right.delete(right[0])
    end
  end

  while !left.empty?
    result << left[0]
    left.delete(left[0])
  end
  while !right.empty?
    result << right[0]
    right.delete(right[0])
  end
end

numbers = [2, 1]

merge_sort(numbers)