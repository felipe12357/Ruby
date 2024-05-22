class ChangeTableNameArticleF < ActiveRecord::Migration[7.0]
  def change
    rename_table :articles_fs, :article_fs
  end
end
