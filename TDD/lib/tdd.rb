def remove_dups(arr)
  arr.uniq
end

def two_sum(arr)
  result = []
  i = 0
  while i < arr.length
    j = i + 1
    while j < arr.length
      result << [i, j] if arr[i] + arr[j] == 0
      j += 1
    end
    i += 1
  end
  result
end

def my_transpose(arr)
  result = Array.new(arr.length) {Array.new}
  i = 0
  while i < arr.length
    j = 0
    while j < arr.length
      result[j][i] = arr[i][j]
      j += 1
    end
    i += 1
  end
  result
end

def stock_picker(arr)
  result = {} 
  i=0
  while i < arr.length - 1 
    j=i+1
    while j < arr.length 
      result[[i,j]]= arr[j]-arr[i]
      j += 1
    end
    i += 1
  end 
  res = result.to_a.sort_by{ |k,v| v}
  res.last[0] 
end 