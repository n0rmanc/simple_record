class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.integer :value
      t.belongs_to :vendor
      t.timestamps null: false
    end
  end
end
