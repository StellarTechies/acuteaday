class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.boolean :enabled
      t.string :image
      t.string :url
      t.references :author
      t.timestamps null: false
    end
    
    create_table :categories_posts, id: false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :post, index: true
    end
    
  end
end
