class Appletree
    attr_accessor :age
    attr_reader :height, :count
    def initialize
        @age = 0
        @height = 10 
        @count = 0
    end 
    def year_gone_by
        if @age < 3
            @count = @count 
        elsif @age > 10 
            @count = @count 
        else 
            @count += 2 
        end 
        @age += 1 
        @height = @height + (@height * 0.1)
    end 
    def pick_apples
        @count = 0 
    end 
end
