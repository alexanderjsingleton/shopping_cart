class Coupon < ActiveRecord::Base
  belongs_to :order

  #create order/coupons inside a controller
  params = { :order => { :name => '2-1 Orders', :coupons_attributes => { :coupon_name => '10% discount' } } }

  #create new order and coupons
  Order.create(params[:order])

  #update a coupon
  params = { :order => { :coupon_attributes => { :id => '2', :coupon_name => '15% discount' } } }
  order.update_attributes params[:order]

end
