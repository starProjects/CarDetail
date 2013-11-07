class CreateState < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state_abbrv
      t.string :state_name
    end
  end
end
