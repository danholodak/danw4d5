# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min_phase_one(list) #time = O(n^2) space = O(1)

    (0...list.length).each do |i|
        if (0...list.length).all? {|j| list[i] <= list[j]}  
            return list[i]
        end
    end
end

# p my_min_phase_one(list)

def my_min_phase_two(list) # time = O(n) space = O(1)
    min = list[0] 
    list.each do |ele|
        if ele <= min
            min = ele
        end
    end
    min
end

# p my_min_phase_two(list)

def largest_contiguous_subsum_phase_one(list) # time: O(n^3) space: O(n^2)
    subsets = []
    i = 0
    while i < list.length 
        j = i 
        while j < list.length
            if !subsets.include?(list[i..j])
                subsets << list[i..j]
            end
            j += 1
        end
        i += 1
    end
    subsets.each do |subset|
        return subset.sum if subsets.all? {|subset2| subset.sum >= subset2.sum}
    end
end

# list = [5, 3, -7]
# p largest_contiguous_subsum_phase_one(list) # => 8

def largest_contiguous_subsum_phase_two(list)
    largest_sum = list[0]

end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum_phase_two(list) # => 8 (from [7, -6, 7])

list2 = [-5, -1, -3]
largest_contiguous_subsum_phase_two(list2) # => -1 (from [-1])