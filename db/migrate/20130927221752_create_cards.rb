class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :deck_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
