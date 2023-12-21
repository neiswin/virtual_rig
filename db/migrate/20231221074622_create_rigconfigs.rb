class CreateRigconfigs < ActiveRecord::Migration[7.0]
  def change
    create_table :rigconfigs do |t|
      t.string :rig_type
      t.string :oil_well
      t.string :drilling_crew
      t.float :max_pressure_ptong

      t.timestamps
    end
  end
end
