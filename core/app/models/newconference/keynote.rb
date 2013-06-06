module Newconference
  class Keynote < ActiveRecord::Base
    belongs_to :speaker
    validates :speaker, :title, presence: true
  end
end
