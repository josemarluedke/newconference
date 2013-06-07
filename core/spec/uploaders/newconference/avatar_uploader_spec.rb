require 'spec_helper'

describe Newconference::AvatarUploader do
  include CarrierWave::Test::Matchers

  subject { Newconference::AvatarUploader }

  before do
    subject.enable_processing = true
    speaker = Newconference::Speaker.new
    @uploader = subject.new(speaker, :image)
    @uploader.store!(File.open("#{Newconference::Core::Engine.root}/spec/fixtures/avatar.png"))
  end

  after do
    subject.enable_processing = false
    @uploader.remove!
  end

  context 'the resized image' do
    it { expect(@uploader).to have_dimensions(300,300) }
  end

  context 'the thumb image' do
    it { expect(@uploader.thumb).to have_dimensions(130, 130) }
  end
end
