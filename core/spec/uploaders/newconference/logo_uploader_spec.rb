require 'spec_helper'

describe Newconference::LogoUploader do
  include CarrierWave::Test::Matchers

  subject { Newconference::LogoUploader }

  before do
    subject.enable_processing = true
    speaker = Newconference::Sponsor.new
    @uploader = subject.new(speaker, :image)
    @uploader.store!(File.open("#{Newconference::Core::Engine.root}/spec/fixtures/logo.png"))
  end

  after do
    subject.enable_processing = false
    @uploader.remove!
  end

  context 'the resized image' do
    it { expect(@uploader).to have_dimensions(180, 70) }
  end

end

