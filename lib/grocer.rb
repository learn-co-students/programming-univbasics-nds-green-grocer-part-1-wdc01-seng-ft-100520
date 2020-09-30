require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
   collection.each do |key|
     #binding.pry
    key.each do |key2, value|
       if value == name
       return key
      end
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  updated_cart = []
  counter = 0
  
  while counter < cart.length
  new_cart_item = find_item_by_name_in_collection(cart[counter][:item], updated_cart)
  if new_cart_item 
    new_cart_item[:count] += 1
  else
    new_cart_item ={
      :item => cart[counter][:item],
      :price => cart[counter][:price],
      :clearance => cart[counter][:clearance],
      :count => 1
    }
    updated_cart << new_cart_item 
  end
  counter += 1
  end
  updated_cart
  
  #binding.pry
end




  