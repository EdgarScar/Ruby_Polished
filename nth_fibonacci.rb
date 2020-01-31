def nth_fibonacci(count)
    if count < 1
        puts "Please enter a positive integer"
    else 
        num_one = 0
        num_two = 1
        fib_num = 0
        updated_count = count - 2
        updated_count.times do 
            fib_num = num_one + num_two
            num_one = num_two
            num_two = fib_num
        end
        puts fib_num
    end 
end 

nth_fibonacci(19)