class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :time
      t.belongs_to :organizer
      t.string :location
      t.text :rules
      t.string :game
      t.text :participants

      t.timestamps
    end
    add_index :events, :organizer_id
  end
end
