class AddColumnToBlogsTitles < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs_titles, :user_id, :integer
  end
end
