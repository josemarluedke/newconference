# This migration comes from newconference (originally 20130607171844)
class CreateNewconferenceRooms < ActiveRecord::Migration
  def change
    create_table :newconference_rooms do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
