class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :category
      t.string :headline
      t.string :content

      t.timestamps
    end
  end
end
