def  partition(ar,start_index, end_index)
    pivot_value = ar[end_index]
    i = 0
    j = 0
    while j < end_index 
        if ar[j] < pivot_value
            temp = ar[j]
            ar[j] = ar[i]
            ar[i] = temp
            i += 1
            j += 1
        else
            j += 1
        end
    end
    ar[end_index] = ar[i]
    ar[i] = pivot_value
    i
end

def quicksort(arr,start_index,end_index)
    if (start_index < end_index)
        pivot = partition(arr,start_index, end_index)
        quicksort(arr, start_index, pivot -1) if (pivot > 0)
        quicksort(arr, pivot+1, end_index) if (pivot < end_index)
    end
end

arr = (1..999).to_a.sample 50
quicksort(arr, 0, arr.length-1)
puts arr.join(" ")
