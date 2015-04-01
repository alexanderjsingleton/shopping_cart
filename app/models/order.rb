class Order < ActiveRecord::Base
  has_many :items

  # Order has 1 to many assocation with coupons
  has_many :coupons

  # Add coupons as nested attribute to order
  # ":allow_destroy => :true" allows an edit form to remove a coupon
  # ":reject_if" rejects saving the form data if no attributes are entered in the coupon form
  accepts_nested_attributes_for :coupons, :allow_destroy => :true  ,
    :reject_if => proc { |attrs| attrs.all? { |key, value| value.blank? } }

end