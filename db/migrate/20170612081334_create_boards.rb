class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards, id: false do |t|
      t.string :uuid, limit: 36, primary: true, null: false
      t.string :name, limit: 50, null: false

      t.timestamps
    end
  end
end
