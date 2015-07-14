class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email, unique: true, index: true
      t.text :bio
      t.string :image
      t.string :password_digest
      
      t.timestamps null: false
    end
  end
end
