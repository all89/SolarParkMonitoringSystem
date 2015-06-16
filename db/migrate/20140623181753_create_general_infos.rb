class CreateGeneralInfos < ActiveRecord::Migration
  def change
    create_table :general_infos do |t|
      t.string :name
      t.string :solar_panels
      t.string :nominal_power
      t.string :string_inverters
      t.string :nominal_inverter
      t.string :number_per_inverter
      t.string :price
      t.timestamps
    end
  end
end
