test_cases = gets.chomp.to_i
for i in 1..test_cases
    sequence = gets.chomp.split("")
    sequence.delete_at(sequence.length/2) if sequence.length % 2 != 0
    total_conversions = 0
    for i in 1..(sequence.length/2)
        total_conversions += ((sequence[i-1].ord) - (sequence[sequence.length-i].ord)).abs 
    end
    puts total_conversions
end