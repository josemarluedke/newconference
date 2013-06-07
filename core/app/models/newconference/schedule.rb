module Newconference
  class Schedule < ActiveRecord::Base
    belongs_to :room
    belongs_to :keynote
    validates :room, :starts_at, presence: true
  end
end
