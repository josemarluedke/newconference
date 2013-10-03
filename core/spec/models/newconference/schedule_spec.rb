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

    describe '.all_days' do
      before do
        2.times { Schedule.make! starts_at: Time.now }
        Schedule.make! starts_at: Time.now - 1.day
      end

      it { expect(Schedule.all_days).to have(2).all_days }
    end

    describe '.by_hour' do
      before do
        now = DateTime.now.to_s.to_datetime
        Schedule.make! starts_at: now
        Schedule.make! starts_at: now
        Schedule.make! starts_at: now+1.day
        Schedule.make! starts_at: now+2.day
      end

      it { expect(Schedule.by_hour(DateTime.now.to_s.to_datetime)).to have(2).items }
      it { expect(Schedule.by_hour(DateTime.now.to_s.to_datetime+1.day)).to have(1).items }
      it { expect(Schedule.by_hour(DateTime.now.to_s.to_datetime+2.day)).to have(1).items }
    end

    describe '.all_days_by_date' do
      before do
        @s1 = Schedule.make! starts_at: DateTime.now.to_s.to_datetime
        @s2 = Schedule.make! starts_at: DateTime.now.to_s.to_datetime+1.day
        @s3 = Schedule.make! starts_at: DateTime.now.to_s.to_datetime+2.day
      end

      it { expect(Schedule.all_days_by_date(DateTime.now.to_s.to_datetime)).to include @s1.starts_at }
      it { expect(Schedule.all_days_by_date(DateTime.now.to_s.to_datetime+1.day)).to include @s2.starts_at }
      it { expect(Schedule.all_days_by_date(DateTime.now.to_s.to_datetime+2.day)).to include @s3.starts_at }
    end
  end
end
