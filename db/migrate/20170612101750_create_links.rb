class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.text :desc
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
