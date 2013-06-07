module Newconference
  class Keynote < ActiveRecord::Base
    belongs_to :speaker
    has_many :schedules
    validates :speaker, :title, presence: true
  end
end
