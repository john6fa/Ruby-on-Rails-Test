class Test
    @@abc = 1

    def self.update
        @@abc = 2
    end 

    def z 
        puts @@abc
    end

    def interest_rate
        @@interest_rate = 0.2
    end

    def calc_interest ( balance )
        puts balance * interest_rate
    end
end

obj = Test.new
puts obj.calc_interest(100)


# $g = 123

# obj = Test.new
# obj.z
# obj2 = Test.new 

# Test.update
# obj.z
# obj2.z

# puts $g
# QQQ = "q"
# puts QQQ   

# puts "10".to_f
# puts "hello".to_f

# numbers = [1, 4, 6, 7, 3, 2, 5]
# # numbers

# def loop(nums)
#     nums.each { |n| print "#{n} " }
# end 

# puts "Sorted"
# loop(numbers.sort!)

# puts "Reverse"
# loop(numbers.reverse!)

# loop(numbers)


