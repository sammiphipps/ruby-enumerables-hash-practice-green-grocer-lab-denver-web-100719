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
  coupons.each do |coupon| 
    coupon.each do |attribute, value| 
      name = coupon[:item] 
    
      if cart[name] && cart[name][:count] >= coupon[:num] 
        if cart["#{name} W/COUPON"] 
          cart["#{name} W/COUPON"][:count] += 1 
        else 
          cart["#{name} W/COUPON"] = {:price => coupon[:cost]/coupon[:num],
          :clearance => cart[name][:clearance], :count => 1} 
        end 
        cart[name][:count] -= coupon[:num] 
      end 
    end 
  end 
  cart 
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
