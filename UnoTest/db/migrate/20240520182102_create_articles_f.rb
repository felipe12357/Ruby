class CreateArticlesF < ActiveRecord::Migration[7.0]
  def change
    #el nombre en minusculas y en plural
    create_table :articles_fs do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
