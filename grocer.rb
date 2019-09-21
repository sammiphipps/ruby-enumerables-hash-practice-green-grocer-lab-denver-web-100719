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
  coupons.each{ |coupon|
    coupon.each{ |attribute, value|
      item = coupon[:item]
      if cart[item] && cart[item][:count] >= coupon[:num]
        if cart["#{item} W/COUPON"]
          cart["#{item} W/COUPON"][:count] += 1
        else 
          cart["#{item} W/COUPON"][:price] = coupon[:cost]
          cart["#{item} W/COUPON"][:clearance] = cart[item][:clearance]
          cart["#{item} W/COUPON"][:count] = 
    }
  }
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
