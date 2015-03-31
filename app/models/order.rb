class Order < ActiveRecord::Base
  # Order has 1 to many assocation with items
  has_many :items
end
