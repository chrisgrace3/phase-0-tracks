# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # assign a key with a value
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]


def create_list(items)
  grocery_list = {}
  list_arry = items.split(' ')
  list_arry.each do |item|
  grocery_list[item] = 1
  end
  pretty_list grocery_list
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # Add the item into the list (hash)
  # Default value of 1
  # Assign item to key, and quanity to value
# output: list (hash) with new item/quantity added

def add_item(list, new_item, quantity = 1)
  list[new_item] = quantity
  list
end

# Method to remove an item from the list
# input: list (hash), item name (string)
# steps:
  # Remove item from hash
# output:

def remove_item(list, item)
  list.delete(item)
  list
end

# Method to update the quantity of an item
# input: list, item name, quantity
# steps:
  # if quantity is zero, delete
  # else if quantity is more than zero, update quanity (value)
# output: hash with updated quantity of item

def update_quantity(list, item, quantity)
  if quantity == 0
    remove_item(list, item)
  else
    list[item] = quantity
  end
end

# Method to print a list and make it look pretty
# input: list
# steps: print each key/value pair as a pretty vertical list
# output:

def pretty_list(list)
  list.each do |item, quantity|
    puts "#{item.capitalize}, qty: #{quantity}"
  end
end

# DRIVER CODE **********************************************************************

grocery_list = create_list("carrots apples cereal pizza")

add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)

remove_item(grocery_list, "lemonade")

update_quantity(grocery_list, "ice cream", 1)

pretty_list(grocery_list)
