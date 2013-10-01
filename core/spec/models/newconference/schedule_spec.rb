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
        subject { Schedule.make keynote: nil, title: nil }
        it { should validate_presence_of :title }
      end
    end

    describe 'associations' do
      it { should belong_to :room }
      it { should belong_to :keynote }
    end

    describe '.days' do
      before do
        2.times { Schedule.make! starts_at: Time.now }
        Schedule.make! starts_at: Time.now - 1.day
      end

      it { expect(Schedule.days).to have(2).days }
    end
  end
end
