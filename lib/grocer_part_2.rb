require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  new_cart=[]
 #cart.each do |cart_item|
   
   
   coupons.each do |coupon|
     item_with_coupon = find_item_by_name_in_collection(coupon[:item], cart)
     
     if item_with_coupon[:count] >= coupon[:num]
     new_cart <<{:item => "#{coupon[:item]} W/COUPON",
       :price => coupon[:cost] / coupon[:num],
       :clearance => cart_item[:clearance],
       :count => coupon[:nim]}
     
    item_with_coupon[:count] -= coupon[:num] 
     
   end
 end
 new_cart
 end
     
     
     
     
     
=begin  if coupons_item[:item]==cart_item[:item]
     x=cart_item[:count] % coupons_item[:num]
     if x==0 
       cart_item[:item]+= " W/COUPON"
       cart_item[:price]=coupons_item[:cost]/coupons_item[:num]
       
       
     else
       cart_item[:count]=x
       item_with_coupon[:item]=cart_item[:item]+ " W/COUPON"
       item_with_coupon[:price]=
       item_with_coupon[:clearance]= true 
       item_with_coupon[:count]=cart_item[:count]/coupon_item[:num]
       item_with_coupon[:count].floor
       new_cart << {:item => "#{cart_item[:item]} W/COUPON",
       :price => coupon_item[:cost] / coupon_item[:num],
       :clearance => cart_item[:clearance],
       :count => 
 end
 end
 end
 new_cart << cart_item
end
  new_cart
end

=end


def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
