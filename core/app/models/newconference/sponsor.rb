module Newconference
  class Sponsor < ActiveRecord::Base
    validates :name, :logo, :kind, presence: true
    mount_uploader :logo, Newconference::LogoUploader

    scope :kind, ->(kind) { where('kind = ?', kind) }
  end
end
