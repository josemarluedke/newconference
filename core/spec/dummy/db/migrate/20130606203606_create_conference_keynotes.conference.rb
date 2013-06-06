# This migration comes from conference (originally 20130606201525)
class CreateConferenceKeynotes < ActiveRecord::Migration
  def change
    create_table :conference_keynotes do |t|
      t.references :speaker, index: true, null: false
      t.string :title, null: false
      t.text :description
      t.boolean :featured

      t.timestamps
    end
  end
end
