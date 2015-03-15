class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :id_str, index: true, limit: 64
      t.text :text
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :messages, :users
  end
end
