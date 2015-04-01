class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :coupon_name
      t.references :order, index: true

      t.timestamps null: false
    end
    add_foreign_key :coupons, :orders
  end
end
