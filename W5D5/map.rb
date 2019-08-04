class Map


    def initialize
        @map = Array.new()
    end


    def set(key,value)

        map.each do |subarray|
            if subarray.first == key
                subarray.last = value
                return "key revalued!"
            end
        end

        map << [key, value]
        return "key value assigned!"
    end

    def get(key)

        map.each do |subarray|
            if subarray.first == key
                return subarray.last
            end
        end
        
        return "no key/value found"
    end

    def delete(key)
        
        map.each do |subarray|
            if subarray.first == key
                map.delete(subarray)
            end
        end

    end

    def show
        map.each do |subarray|
            print subarray
            print '\n'
        end
    end

    private

    attr_accessor :map



end