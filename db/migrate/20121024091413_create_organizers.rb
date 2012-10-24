class CreateOrganizers < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.string :name
      t.string :organization
      t.date :joined

      t.timestamps
    end
  end
end
