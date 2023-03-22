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