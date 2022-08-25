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

  left_arr = merge_sort(left)
  right_arr = merge_sort(right)

  return merge(left_arr, right_arr)
end

def merge(left, right)
  result = []

  while left.any? && right.any?
    if left[0] < right[0]
      result << left[0]
      left.delete(left[0])
    else
      result << right[0]
      right.delete(right[0])
    end
  end

  while left.any?
    result << left[0]
    left.delete(left[0])
  end
  while right.any?
    result << right[0]
    right.delete(right[0])
  end
  return result
end

numbers = [14, 135, 78, 97, 83, 175, 67, 2, 15, 32, 131, 64, 22, 178, 149, 108, 195, 189, 54, 28, 116, 40, 181, 42, 88, 158, 105, 118, 60, 164, 152, 43, 169, 37, 103, 70, 177, 75, 154, 187, 21, 19, 191, 160, 17, 161, 190, 168, 163, 50]

p merge_sort(numbers)