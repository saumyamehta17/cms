class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      
      t.references :user
      t.timestamps
    end

    add_index :pages , :user_id
  end
end
