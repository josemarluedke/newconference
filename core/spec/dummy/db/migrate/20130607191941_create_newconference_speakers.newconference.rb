# This migration comes from newconference (originally 20130604223627)
class CreateNewconferenceSpeakers < ActiveRecord::Migration
  def change
    create_table :newconference_speakers do |t|
      t.string :name
      t.text :bio
      t.string :avatar
      t.string :github_url
      t.string :twitter_url
      t.string :other_url
      t.boolean :featured, default: false

      t.timestamps
    end
  end
end
