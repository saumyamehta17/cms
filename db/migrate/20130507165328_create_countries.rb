class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.references :address

      t.timestamps
    end
    add_index :countries, :address_id
  end
end
