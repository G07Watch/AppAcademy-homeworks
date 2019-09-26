#Big O-ctopus and Biggest Fish


#Sluggish Octopus
def sluggish_octo(arr)

    sorted = false
    
    while !sorted
        sorted = true
        (0...arr.length-1).each do |idx|
            (idx+1...arr.length).each do |idx2|
                fish1= arr[idx]
                fish2 = arr[idx2]
                if fish1.length > fish2.length
                    sorted = false
                    arr[idx], arr[idx2] = arr[idx2], arr[idx]
                end
            end
        end
    end

    return arr.last
end



#Dominant Octopus


def dominant_octo(arr)
   p sorted_fish = dominant_merge(arr)
    sorted_fish.last
end

def dominant_merge(arr)
    return arr if arr.length <= 1
    mid = arr.length/2
    left = dominant_merge(arr.take(mid))
    right = dominant_merge(arr.drop(mid))

    octo_merge(left,right)
end

def octo_merge(left,right)
    merged = []

    until left.empty? || right.empty?
        case left.first.length <=> right.first.length
        when -1 
            merged << left.shift
        when 0
            merged << left.shift
        when 1
            merged << right.shift
        end
    end

    merged + left + right
end


# Clever Octopus

def clever_octo(arr)
    longest = arr[0]

    arr.each {|fish| longest = fish if fish.length > longest.length }
    
    longest
end


# school = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

# p school.last.length

# puts sluggish_octo(school)
# puts sluggish_octo(school).length

# p dominant_octo(school)
# p dominant_octo(school).length

# p clever_octo(school)
# p clever_octo(school).length

# Dancing Octopus

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


def slow_dance(direction, arr)
    arr.each_with_index { |tentacle, idx| return idx if tentacle == direction }
end

# p slow_dance("up", tiles_array)

# p slow_dance("right-down", tiles_array)


new_tiles_data_structure = {

    "up" => 0, 
    "right-up"=> 1, 
    "right" => 2, 
    "right-down" => 3, 
    "down" => 4, 
    "left-down" => 5, 
    "left" => 6,  
    "left-up" => 7
}

def fast_dance(direction, hash)
    hash[direction]
end

p fast_dance("up", new_tiles_data_structure)


p fast_dance("right-down", new_tiles_data_structure)
