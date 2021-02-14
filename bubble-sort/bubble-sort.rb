def bubble_sort(array_to_sort)
  i=array_to_sort.length-1
  i.times do
    for j in 0...i
      if array_to_sort[j] > array_to_sort[j + 1]
        array_to_sort[j], array_to_sort [j+1] = array_to_sort [j+1], array_to_sort[j]
      end 
    end
    i=i-1
    #removes redundant checks as bubble sort moves largest to right 
  end
  array_to_sort
end
p bubble_sort([99,1,5,6,2,5])   #[1, 2, 5, 5, 6, 99]
p bubble_sort([4,3,78,2,0,2])   #[0, 2, 2, 3, 4, 78]
p bubble_sort([6, 5,4,3,2,1])   #[1, 2, 3, 4, 5, 6]
