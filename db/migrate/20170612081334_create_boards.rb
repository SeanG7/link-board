class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.string :uuid
      t.string :name, limit: 50, null: false

      t.timestamps
    end
  end
end
