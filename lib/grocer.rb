def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
    collection.find { |item| item[:item] == name }
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  result = cart.group_by { |item| item[:item] }
  result.map do |key, value|
      item = value[0]
      item[:count] = value.length
      item
  end
end


  