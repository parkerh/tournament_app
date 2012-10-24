class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.boolean :payed

      t.timestamps
    end
  end
end
