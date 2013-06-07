class Newconference::LogoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file

  def store_dir
    "uploads_#{Rails.env}/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process resize_to_fit: [180, 70]
end

