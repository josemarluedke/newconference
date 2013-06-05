module Conference
  class Speaker < ActiveRecord::Base
    validates :name, presence: true
  end
end
