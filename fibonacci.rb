def fibonacci(n)
    sequence = []
    0.upto(n) { |i|
        if i == 0
        sequence << 0        
        elsif i == 1
        sequence << 1
        else 
            sequence << (sequence[i-1] + sequence[i-2])
        end
    }
    sequence 
end

puts "Loop style: #{fibonacci(100)}"

def fib(n)
    if n == 0
        return [0]
    end
	if n == 1
		return [0,1]
	end
    sequence = fib(n-1) # really starts working when n = 2, since we know the base for 0 & 1.
    sequence <<  sequence[-2] + sequence[-1] #Will actually add up the last 2 numbers correctly 
end

puts "\nrecursion: #{fib(10)}"

