require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
 #cart.each do |cart_item|
   
   
   coupons.each do |coupon|
     item_with_coupon = find_item_by_name_in_collection(coupon[:item], cart)
     
     if item_with_coupon[:count] >= coupon[:num]
     cart <<{:item => "#{coupon[:item]} W/COUPON",
       :price => coupon[:cost] / coupon[:num],
       :clearance => item_with_coupon[:clearance],
       :count => coupon[:num]}
     
    item_with_coupon[:count] -= coupon[:num] 
     
   end
 end
 cart
 end
     
     
 

def apply_clearance(cart)
 
 cart
 
  
  
  cart
end




def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
