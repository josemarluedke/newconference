module Conference
  class Speaker < ActiveRecord::Base
    has_many :keynotes, dependent: :destroy
    validates :name, presence: true
  end
end
