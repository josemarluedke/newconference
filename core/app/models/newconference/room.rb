module Newconference
  class Room < ActiveRecord::Base
    has_many :schedules
    validates :name, presence: true
  end
end
