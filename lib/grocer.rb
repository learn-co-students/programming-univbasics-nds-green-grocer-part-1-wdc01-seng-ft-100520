def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
    count = 0
    while collection.length() > count do 
      if collection[count][:item] == name 
        return collection[count]
      end
      count += 1
    end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  newCart = []
  counts = {}
  cart.each { |item|
    current = find_item_by_name_in_collection(item[:item], newCart)
    if current != nil
      newCart.each { |x|
        if x[:item] == item[:item]
          x[:count] += 1
        end
      }
    else
      item[:count] = 1
      newCart.push(item)
    end
  }
  newCart
end

  