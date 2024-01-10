class AddToRigconfigsRignumber < ActiveRecord::Migration[7.0]
  def change
    add_column :rigconfigs, :rig_number, :string
  end
end
