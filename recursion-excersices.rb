def range(min,max)
    return max if max == min
    new_arr = []
    new_arr << range(min,max-1)
end