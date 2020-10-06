require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
    index = 0
  
    while index < collection.length do
      return collection[index] if collection[index][:item] === name 
      index += 1
    end
  end



  #
  # Consult README for inputs and outputs



def consolidate_cart(cart)
  # Consult README for inputs and outputs
  new_cart = []
  index = 0
  new_cart
  while index < cart.length do
    new_item = find_item_by_name_in_collection(cart[index][:item], new_cart)
    if new_item != nil 
      new_item[:count] += 1
    else 
      new_item = {
        item: cart[index][:item],
        price: cart[index][:price],
        clearance: cart[index][:clearance],
        count: 1
      }
      new_cart << new_item
    end
    index += 1
  end
  new_cart
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

end


  