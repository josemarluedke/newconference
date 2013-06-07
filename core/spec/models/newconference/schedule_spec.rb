require 'spec_helper'

module Newconference
  describe Schedule do
    describe 'validations' do
      it { should validate_presence_of :room }
      it { should validate_presence_of :starts_at }

      context 'when has a keynote' do
        subject { Schedule.make keynote: Keynote.make! }
        it { should_not validate_presence_of :title }
      end

      context 'when does not have a keynote' do
        subject { Schedule.make keynote: nil }
        it { should validate_presence_of :title }
      end
    end

    describe 'associations' do
      it { should belong_to :room }
      it { should belong_to :keynote }
    end
  end
end
