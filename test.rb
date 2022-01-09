# class Test
#     @@abc = 1

#     def self.update
#         @@abc = 2
#     end 

#     def z 
#         puts @@abc
#     end

#     def interest_rate
#         @@interest_rate = 0.2
#     end

#     def calc_interest ( balance )
#         puts balance * interest_rate
#     end
# end

# obj = Test.new
# puts obj.calc_interest(100)


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


# a = [ 1, 3, 5, 7, 9 ]	
# a[2, 2] = 'cat', 'o', 'q', 'r'

# puts a

# def fibUpTo(max)
#     i1, i2 = 1, 1        # parallel assignment
#     while i1 <= max
#         if block_given?
#             yield i1
#         end
#         i1, i2 = i2, i1+i2
#     end
# end

# def into(anArray)
#     return proc { |val| anArray << val }
# end

# puts fibUpTo(20)


# pipe = IO.popen("-","w+")
# if pipe
#   pipe.puts "Get a job!"
#   $stderr.puts "Child says '#{pipe.gets.chomp}'"
# else
#   $stderr.puts "Dad says '#{gets.chomp}'"
#   puts "OK"
# end

str = "hello"
fork do
    puts "In child, pid = #$$"
    puts str
    exit 99
end

pid = Process.wait
puts "Child terminated, pid = #{pid}, exit code = #{$? >> 8}"
puts "Parent pid = #$$"