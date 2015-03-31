class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.references :order, index: true

      t.timestamps null: false
    end
    add_foreign_key :items, :orders
  end
end
