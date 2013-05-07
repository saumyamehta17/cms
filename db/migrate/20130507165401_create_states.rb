class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.references :address
      t.references :country

      t.timestamps
    end
    add_index :states, :address_id
    add_index :states, :country_id
  end
end
