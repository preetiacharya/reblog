class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :category_id
      t.string :title
      t.text :body
      t.date :publish_date

      t.timestamps null: false
    end
  end
end
