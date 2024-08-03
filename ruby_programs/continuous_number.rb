#longest sequence in Array


def longest_sequence(ar)
    ar = ar.sort!
    start = 0
    max_len = 0
    (ar.size - 1 ).times do |i|
        if ar[i] + 1 != ar[i + 1]
            start = i
        end
        current_len = i - start + 1
        max_len = [max_len, current_len].max
    end
    
    return max_len
end