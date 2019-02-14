class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :title
      t.integer :author
      t.string :content
      t.string :description
      t.datetime :date
      t.string :img

      t.timestamps
    end
  end
end
