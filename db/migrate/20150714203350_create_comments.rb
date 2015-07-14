class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string   :title
      t.text     :content
      t.string   :image
      t.timestamps null: false
      t.references :post, index: true, foreign_key: true
    end
    add_index :comments, [:post_id, :created_at]
  end
end
