class CreateDraftPosts < ActiveRecord::Migration
  def change
    create_table :draft_posts do |t|
      t.string :title
      t.text :body
      t.integer :admin_id

      t.timestamps
    end
  end
end
