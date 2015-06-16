class CreateParkStructures < ActiveRecord::Migration
  def change
    create_table :park_structures do |t|

      t.timestamps
    end
  end
end
