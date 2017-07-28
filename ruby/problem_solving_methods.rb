# RELEASE 0
# take an input. the input will be an ARRAY of INTEGERS
# create a method that will allow the array to be searched for a specific INTEGER
# if present, provide index. if not present, return nil

def search array, num
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
search arr, 5




# RELEASE 1
# Calculate Fibonacci Numbers
# Input will be a number
# Return an array

def fib(num)
  fib_array = []
  init_array = [0,1]
  cycle = 0
  num.times do
    init_array << init_array[-1] + init_array[-2]
    fib_array << init_array[cycle]
    cycle += 1
  end
  p fib_array
end
fib(100)
