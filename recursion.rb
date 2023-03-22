def range(min,max)
    return [min] if max == min
    [min] + range(min+1,max)
end

def exponent_1(b,n)
    return 1 if n == 0
    b * exponent_1(b, n-1)
end

def exponent_2(b, n)
    return 1 if n ==0
    if n % 2 == 0
        exponent_2(b, n/2) ** 2
    else
        b * (exponent_2(b, (n-1) / 2) ** 2)
    end
end

def deep_dup(arg) 
    return [arg] if !arg.is_a?(Array)

    new_arr = []
    arg.each do |ele|
        if ele.is_a?(Array)
            new_arr << deep_dup(ele)
        else
            new_arr << ele
        end
    end
    return new_arr
end

def fib(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2

    old_n = fib(n-1)

    old_n << old_n[-2] + old_n[-1]
end

def bsearch(arr, t)
    mid_idx = arr.length/2
    return nil  if arr.empty?
    return mid_idx if arr[mid_idx] == t

    left = arr[0...mid_idx]
    right = arr[mid_idx+1..-1]

    if t < arr[mid_idx]
        bsearch(left, t)
    else
       right_check = bsearch(right, t)
       return nil if right_check.nil?
        
       left.length + right_check + 1
    end
end

def merge_sort(arr)
    if left.length == 1 && right.length == 1
        

    mid_idx = arr.length/2
    left = arr[0...mid_idx]
    right = arr[mid_idx+1..-1]
    merge(merge_sort(left), merge_sort(right))

end

def merge(left, right)
    combined = left + right
end
