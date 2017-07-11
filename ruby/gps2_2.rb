# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# Split list of input items
# Assign each item to a key, with a value of 1
  # Set default quantity to 1
  # Print the list to the console. Once created, use print method.
# output: A HASH
def create_list(list_input)
  list_input_array = list_input.split(' ')
  list = {}
  list_input_array.each do |item|
     list[item] = 1
  end
  p list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # Create method in taking the input arguments.  Within method add parameters key with optional quality as value.
  # Assign new item to a key with a value of 1, IF no optional quantity
# output: HASH with newly added item
def item_adder(list, item, optional_quantity = 1)
  list[item] = optional_quantity
  p list
end

# Method to remove an item from the list
# input: list (hash), EXISTING item name, optional quantity
# steps:
  # Set optional quantity to 1, and delete item from list if equal to 1
  # Otherwise, change the quantity of the item in the list to reflect quantity to be subtracted.
# output: Hash with item removed
def item_remover(list, item, optional_quantity = 1)
  if optional_quantity == 1
    list.delete_if { |key, value|
     key == item
    }
  else
    list.each do |key, value|
      if item == key
        list[key] = (value - optional_quantity)
      end
    end
  end
p list
end

# Method to update the quantity of an item
# input: list (hash), existing item, new quantity
# steps:
  #
# output: New hash with an updated quantity of an item
def update_quanity(list, item, new_quantity)
  list.each do |key, value|
     list[key] = new_quantity
   end
   p list
end

# Method to print a list and make it look pretty
# input: list (hash)
# steps:
# output: Pretty list
def pretty_up(list)
  puts "\nHere is your grocery list: "
  list.each do |key, value|
    puts value.to_s + ' ' + key.to_s
  end
end

# DRIVER CODE ************************************************************************************************************************
groceries = {"carrots"=>1, "apples"=>1, "cereal"=>1, "pizza"=>1, "oranges"=>5}
pretty_up(groceries)
