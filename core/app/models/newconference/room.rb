module Newconference
  class Room < ActiveRecord::Base
    validates :name, presence: true
  end
end
