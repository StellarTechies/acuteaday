class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.text :content
      t.string :image
      t.timestamps null: false
    end
  end
end
