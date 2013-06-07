# This migration comes from newconference (originally 20130606201525)
class CreateNewconferenceKeynotes < ActiveRecord::Migration
  def change
    create_table :newconference_keynotes do |t|
      t.references :speaker, index: true, null: false
      t.string :title, null: false
      t.text :description

      t.timestamps
    end
  end
end
