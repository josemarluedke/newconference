module Newconference
  class Schedule < ActiveRecord::Base
    belongs_to :room
    belongs_to :keynote
    validates :room, :starts_at, presence: true
    validates :title, presence: true, unless: 'keynote_id.present?'
    scope :by_day, -> (day) { where('starts_at::date = ?', day) }

    def self.days
      select("DISTINCT starts_at::date").map(&:starts_at)
    end

    def self.hours(day)
      select("DISTINCT starts_at::time").where('starts_at::date = ?', day).map(&:starts_at)
    end
  end
end
