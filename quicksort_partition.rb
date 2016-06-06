def  partition(ar,cnt)
    pivot_index = (cnt-1)/2
    pivot_value = ar[pivot_index]
    ar[pivot_index] = ar[cnt-1]
    ar[cnt-1] = pivot_value
    i = 0
    j = 0
    while j < cnt-1 
        if ar[j] <= pivot_value
            temp = ar[j]
            ar[j] = ar[i]
            ar[i] = temp
            i += 1
            j += 1
        else
            j += 1
        end
    end
    ar[cnt-1] = ar[i]
    ar[i] = pivot_value
    puts ar.join(" ")
end
cnt = gets.to_i;
ar = STDIN.gets.chomp.split(" ").map{|x|x.to_i};
partition(ar,cnt);
