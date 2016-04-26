#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

while (arr.length > 0) do
    puts arr.length
    min = arr.min
    arr = arr.map do |stick|
        stick -= min
    end
    arr.delete_if{|stick| stick <= 0}
end
