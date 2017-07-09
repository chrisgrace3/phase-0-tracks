# Take an array and a number, evaluate each object in the array
# such that the index of the item prints if same as number provided in argument.


# define the method
def search(array, num)
  index = 0
  match = nil
  array.each do |digit|
    if digit == num
      match = index
    else
    index += 1
    end
  end
  p match
end

arr = [42, 89, 23, 1]
search(arr, 42)
