class CreateProduct < ActiveRecord::Migration
  # def change
  #   create_table :products do |t|
  #   end
  # end

  def up
    create_table :products do |t|
      t.string :name, limit: 32
      t.integer :price
    end
  end

  def down
    drop_table :products
  end
end
