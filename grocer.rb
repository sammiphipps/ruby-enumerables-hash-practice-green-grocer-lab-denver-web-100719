def consolidate_cart(cart)
  new_cart = {}
  cart.each{ |item_array|
    item_array.each{ |item, attribute_hash|
      if new_cart[item]
        new_cart[item][:count] += 1
      else
        new_cart[item] = attribute_hash
        new_cart[item][:count] = 1
      end
    }
  }
  new_cart
end

def apply_coupons(cart, coupons)
  coupons.each{|coupon|
    
  }
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
