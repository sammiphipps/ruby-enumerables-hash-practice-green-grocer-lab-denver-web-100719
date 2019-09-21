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
          cart["#{name} W/COUPON"][:count] += coupon[:num] 
        else 
          cart["#{name} W/COUPON"] = {:price => coupon[:cost]/coupon[:num],
          :clearance => cart[name][:clearance], :count => coupon[:num]} 
        end 
        cart[name][:count] -= coupon[:num] 
      end 
    end 
  end 
  cart 
end

def apply_clearance(cart)
  cart.each do |item, attribute_hash| 
    if attribute_hash[:clearance] == true 
      attribute_hash[:price] = (attribute_hash[:price] *
      0.8).round(2) 
    end 
  end 
  cart   
end

def checkout(cart, coupons)
  total = 0
  new_cart = consolidate_cart(cart)
  coupon_cart = apply_coupons(new_cart, coupons)
  clearance_cart = apply_clearance(coupon_cartcart)
  
end
