# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # assign a key with a value
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]


def create_list(string)
  grocery_list = {}
  list_arry = string.split(' ')
  list_arry.each do |item|
  grocery_list[item] = 1
  end
  grocery_list
end



# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # Add the item into the list (hash)
  # Default value of 1
  # Assign item to key, and quanity to value
# output: list (hash) with new item/quantity added

def add_item(list, new_item_string, quantity = 1)
  list[new_item_string] = quantity
  list
end

# Method to remove an item from the list
# input: list (hash), item name (string)
# steps:
  # Remove item from hash
# output:

def remove_item(list, item_string)
  list.delete(item_string)
  list
end

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

# DRIVER CODE **********************************************************************

grocery_list = create_list("carrots apples cereal pizza")
p grocery_list

p add_item(grocery_list, "ice cream", 2)

p remove_item(grocery_list, "apples")
