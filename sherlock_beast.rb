#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    if n < 3
        puts -1
    else
        num = -1
        for i in (0..n)
            if ((n-i) % 3) == 0 && (i % 5 == 0)
                num = (('5' * (n-i)) + ('3' * i)).to_i
                break
            end
        end
        puts num
    end
end