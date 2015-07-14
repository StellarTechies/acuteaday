class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :content
      t.boolean :enabled
      t.boolean :spam
      t.references :post
      t.timestamps null: false
    end
  end
end
