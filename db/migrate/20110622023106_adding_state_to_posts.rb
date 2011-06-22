class AddingStateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :state, :string
    add_column :posts, :access_state, :string
  end
end
