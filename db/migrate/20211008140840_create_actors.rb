class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name, null: false, unique: true
      t.text :wiki_url

      t.timestamps
    end
  end
end
