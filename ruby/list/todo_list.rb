class TodoList

  def initialize(array)
  @list_array = array
  end

  def get_items
  @list_array
  end

  def add_item(item)
    @list_array << item
  end

  def delete_item(item)
    @list_array.delete(item)
    @list_array
  end

  def get_item(index)
    @list_array[index]
  end

end
