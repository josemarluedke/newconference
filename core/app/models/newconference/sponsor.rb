module Newconference
  class Sponsor < ActiveRecord::Base
    validates :name, :logo, :kind, presence: true
  end
end
