class CreateNewconferenceRooms < ActiveRecord::Migration
  def change
    create_table :newconference_rooms do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
