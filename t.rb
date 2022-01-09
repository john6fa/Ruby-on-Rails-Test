# def fact(n)
#     if n <= 0
#         1
#     else
#         n * fact(n-1)
#     end
# end

# p fact(5)

class T
    def sayHello
        puts "Hello from #{T.type}"
    end
end

obj = T.new
obj.sayHello