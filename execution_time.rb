list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

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

