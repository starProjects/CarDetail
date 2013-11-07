class AddColumncToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, :null => true
    add_column :users, :last_name, :string, :null => true
    add_column :users, :phone_1, :string, :null => true
    add_column :users, :phone_2, :string
  end
end
