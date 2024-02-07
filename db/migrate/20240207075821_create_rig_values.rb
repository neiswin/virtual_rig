class CreateRigValues < ActiveRecord::Migration[7.0]
  def change
    create_table :rig_values do |t|
      t.string :name
      t.float :value
      t.string :rig

      t.timestamps
    end
  end
end
