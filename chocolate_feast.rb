#!/bin/ruby
t = gets.strip.to_i
for a0 in (0..t-1)
    n,c,m = gets.strip.split(' ')
    n = n.to_i
    c = c.to_i
    m = m.to_i
    purchased_chocos = n/c
    wrappers = purchased_chocos
    extra_chocos = 0
    while wrappers >= m 
        extra_chocos += wrappers / m
        wrappers = (wrappers % m) + (wrappers / m)
    end
    puts (purchased_chocos + extra_chocos) 
end