class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :addr
      t.references :profile

      t.timestamps
    end
    add_index :addresses, :profile_id
  end
end
