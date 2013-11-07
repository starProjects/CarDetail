class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :prod_title
      t.string :prod_sub_title
      t.string :prod_description
      t.decimal :prod_price
      t.integer :prod_qty

      t.timestamps
    end
  end
end
