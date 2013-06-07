# This migration comes from newconference (originally 20130607173517)
class CreateNewconferenceSponsors < ActiveRecord::Migration
  def change
    create_table :newconference_sponsors do |t|
      t.string :name, null: false
      t.string :logo, null: false
      t.string :url
      t.string :kind, null: false

      t.timestamps
    end
  end
end
