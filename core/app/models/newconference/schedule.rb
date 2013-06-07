module Newconference
  class Schedule < ActiveRecord::Base
    belongs_to :room
    belongs_to :keynote
    validates :room, :starts_at, presence: true
    validates :title, presence: true, unless: 'keynote_id.present?'
  end
end
