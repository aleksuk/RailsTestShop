class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      # t.references :order_products
    end
  end
end
