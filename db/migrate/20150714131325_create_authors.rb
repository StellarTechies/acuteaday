class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :email, index:true, unique:true
      t.string :name
      t.text :bio
      t.string :image
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
