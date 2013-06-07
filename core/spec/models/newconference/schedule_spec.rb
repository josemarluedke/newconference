require 'spec_helper'

module Newconference
  describe Schedule do
    describe 'validations' do
      it { should validate_presence_of :room }
      it { should validate_presence_of :starts_at }
    end

    describe 'associations' do
      it { should belong_to :room }
      it { should belong_to :keynote }
    end
  end
end
