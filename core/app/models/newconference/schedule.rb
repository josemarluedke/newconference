module Newconference
  class Schedule < ActiveRecord::Base
    belongs_to :room
    belongs_to :keynote
    validates :room, :starts_at, presence: true
    validates :title, presence: true, unless: 'keynote_id.present?'

    def self.all_days
      select("DISTINCT starts_at::date").map(&:starts_at)
    end

    def self.all_days_by_date(date)
      select("starts_at").where("starts_at::date = ?", date).group("starts_at").order("starts_at::time").map(&:starts_at)
    end

    def self.by_hour(hour)
      where(starts_at: hour).order(:starts_at)
    end
  end
end
