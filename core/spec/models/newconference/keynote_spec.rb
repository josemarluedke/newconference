require 'spec_helper'

module Newconference
  describe Keynote do
    describe 'validates' do
      it { should validate_presence_of :title }
      it { should validate_presence_of :speaker }
    end

    describe 'associations' do
      it { should belong_to :speaker }
      it { should have_many :schedules }
    end
  end
end
