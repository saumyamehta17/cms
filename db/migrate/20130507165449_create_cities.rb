class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.references :address
      t.references :country
      t.references :state

      t.timestamps
    end
    add_index :cities, :address_id
    add_index :cities, :country_id
    add_index :cities, :state_id
  end
end
