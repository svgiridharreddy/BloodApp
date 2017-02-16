class CreateRegisters < ActiveRecord::Migration[5.0]
  def change
    create_table :registers do |t|
      t.string :Name
      t.string :BloodGroup
      t.string :Phone
      t.text :Address

      t.timestamps
    end
  end
end
