class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :film_title, null: false
      t.text :scene, null: false, unique: true
      t.string :author
      t.references :actor, foreign_key: true

      t.timestamps
    end
  end
end
