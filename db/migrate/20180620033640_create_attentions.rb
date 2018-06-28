class CreateAttentions < ActiveRecord::Migration[5.0]
  def change
    create_table :attentions do |t|
      t.string :type
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
      
      t.index [:user_id, :post_id , :type], unique: true
    end
  end
end
