class Map


    def initialize
        @map = Array.new()
    end


    def set(key,value)

        map.each do |subarray|
            if subarray.first == key
                subarray[1] = value
                return subarray
            end
        end

        map << [key, value]
        return [key,value]
    end

    def get(key)

        map.each do |subarray|
            if subarray.first == key
                return subarray.last
            end
        end
        
        return "no value found for #{key}"
    end

    def delete(key)
        
        map.each do |subarray|
            if subarray.first == key
                map.delete(subarray)
            end
        end

    end

    def show
        return map if map.empty?

        map.each do |subarray|
            print subarray
            print "\n"
        end
        
        return
    end

    private

    attr_accessor :map



end