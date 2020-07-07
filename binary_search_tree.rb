require 'pry'
class BST 

    attr_accessor :value, :left, :right

    def initialize(value)
        @value = value
        @left = nil 
        @right = nil
    end

    def data
        @value
    end

    def insert(new_value) 
        if new_value <= self.value 
            self.left.nil? ? self.left = BST.new(new_value) : self.left.insert(new_value)
        elsif new_value > self.value 
            self.right.nil? ? self.right = BST.new(new_value) : self.right.insert(new_value)
        end
    end

    def each(&block)
        #binding.pry
        left.each(&block) if left 
        block.call(data)
        right.each(&block) if right
    end

end