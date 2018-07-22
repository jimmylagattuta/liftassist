class CreateLifts < ActiveRecord::Migration[5.0]
  def change
    create_table :lifts do |t|
      t.string :name
      t.boolean :ready
      t.integer :six
      t.integer :one

      t.timestamps
    end
  end
end
