module Newconference
  class Speaker < ActiveRecord::Base
    has_many :keynotes, dependent: :destroy
    validates :name, presence: true
    mount_uploader :avatar, Newconference::AvatarUploader

    scope :featured, -> { where(featured: true) }
  end
end
