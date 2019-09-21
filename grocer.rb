def consolidate_cart(cart)
  new_cart = cart.reduce({}) do |memo, (key, value)|
    if memo[key]
      memo[key][:count] += 1
    else
      memo[key] = value 
      memo[key][:count] = 1
    end 
    memo
  end 
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
