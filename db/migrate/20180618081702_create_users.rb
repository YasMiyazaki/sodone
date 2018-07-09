class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :nationality
      t.string :japanese_ability
      t.string :occupation
      t.string :age
      t.string :residence
      t.string :email_allowed
      t.text :self_intro

      t.timestamps
    end
  end
end
