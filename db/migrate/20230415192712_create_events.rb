class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :mentor, null: false, foreign_key: {to_table: :users}
      t.references :mentee, null: false, foreign_key: {to_table: :users}
      t.datetime :start_time
      t.datetime :end_time
      t.integer :length
      t.text :note
      t.text :location

      t.timestamps
    end
  end
end
