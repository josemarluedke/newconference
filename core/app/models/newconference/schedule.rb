module Newconference
  class Schedule < ActiveRecord::Base
    belongs_to :room
    belongs_to :keynote
    validates :room, :starts_at, presence: true
    validates :title, presence: true, unless: 'keynote_id.present?'
    scope :by_day, -> (day) { where('starts_at::date = ?', day) }

    def self.all_days
      select("DISTINCT starts_at::date").map(&:starts_at)
    end

    def self.by_date(date)
      where("starts_at::date = ?", date).select("starts_at as starts_at").group("starts_at").order("starts_at::time")
    end

    def self.by_hour(hour)
      where(starts_at: hour).order(:starts_at)
    end
  end
end
