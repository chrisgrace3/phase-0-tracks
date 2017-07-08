
# var1 is an array, var2 is an integer
def search(var1, var2)
  var1.each do |num|
    if num == var2
      puts "yes"
    else
      puts false
    end
  end
end

arr = [42, 89, 23, 1]
p search(arr, 1)
