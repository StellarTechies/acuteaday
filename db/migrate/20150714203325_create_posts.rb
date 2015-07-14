class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :url
      t.string :title
      t.text :content
      t.string :image
      t.boolean :enabled
      t.references :author, index: true, foreign_key: true
      t.timestamps null: false
    end
    
    create_table :categories_posts, id: false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :post, index: true
    end
    
    add_index :posts, [:author_id, :created_at]
  end
end
