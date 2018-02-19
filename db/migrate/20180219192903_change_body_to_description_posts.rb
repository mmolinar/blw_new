class ChangeBodyToDescriptionPosts < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :body, :description
  end
end
