class AddAuthorColumnArticlesF < ActiveRecord::Migration[7.0]
  def change
    add_column :articles_fs, :author, :string
  end
end
