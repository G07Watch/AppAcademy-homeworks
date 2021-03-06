class Stack

    def initialize
        @stack = []
    end

    def push(el)
        #adds an element to the stack
        stack << el
    end

    def pop
        #removes one element from the stack
        stack.pop
    end

    def peek
        #returns, but doesn't remove, the top element in the stack
        stack.last
    end

    private

    attr_accessor :stack
end