class ChangeStateTable < ActiveRecord::Migration
  def change
  	add_column :states, :state_active, :bool
  end
end
