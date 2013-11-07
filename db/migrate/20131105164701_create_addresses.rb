class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :address_1
      t.string :city
      t.string :zip

      t.timestamps
    end
  end
end
