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
 cart_with_clearance=[]
 cart.each do |item|
   if item[:clearance]==true
     item[:price]*=0.8.round(2)
 end    
 cart_with_clearance << item
 end 
  
  cart_with_clearance
end




def checkout(cart, coupons)
  
  consolidate_cart
  
  
  
end
