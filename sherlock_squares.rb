#!/bin/ruby

testCases = gets.strip.to_i
for i in (1..testCases)
    sqrCount = 0
    nums = gets.strip.split(" ").map{|num| num.to_i}
    minSqrt = 0
    maxSqrt = 0
    minPtr = nums[0]
    maxPtr = nums[1]
    while (minSqrt == 0) || (maxSqrt == 0) do
        if (minSqrt == 0)
            if Math.sqrt(minPtr) == Math.sqrt(minPtr).ceil
                minSqrt = Math.sqrt(minPtr) 
            else
                minPtr += 1
            end
        end
        if (maxSqrt == 0)
            if Math.sqrt(maxPtr) == Math.sqrt(maxPtr).ceil
                maxSqrt = Math.sqrt(maxPtr) 
            else
                maxPtr -= 1
            end
        end
    end
    puts (maxSqrt - minSqrt + 1).to_i
end