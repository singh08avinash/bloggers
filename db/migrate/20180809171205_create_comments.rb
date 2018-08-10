class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.integer :resource_id
      t.string :resource_type

      t.timestamps
    end
  end
end
