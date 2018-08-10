class CreateBlogsTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs_titles do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
