# var1 is an array, var2 is an integer
# if var2 is inside var1, print the index, otherwise print nil
def search(var1, var2)
  if var1.include?(var2)
    p var1.index(var2)
  else
    puts "nil"
  end
end

arr = [42, 89, 23, 1]
search(arr, 89)
