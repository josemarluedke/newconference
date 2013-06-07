# This migration comes from newconference (originally 20130607172328)
class CreateNewconferenceSchedules < ActiveRecord::Migration
  def change
    create_table :newconference_schedules do |t|
      t.references :room, index: true, null: false
      t.references :keynote, index: true
      t.string :title
      t.datetime :starts_at, null: false
      t.datetime :ends_at

      t.timestamps
    end
  end
end
