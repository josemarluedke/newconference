require 'spec_helper'

module Newconference
  describe Sponsor do
    describe 'validations' do
      it { should validate_presence_of :name }
      it { should validate_presence_of :logo }
      it { should validate_presence_of :kind }
    end

    describe 'scopes' do
      describe '.kind' do
        before do
          2.times { Sponsor.make! kind: 'support' }
          Sponsor.make! kind: 'organization'
        end

        it { expect(Sponsor.kind('support')).to have(2).supports }
        it { expect(Sponsor.kind('organization')).to have(1).organization }
      end
    end
  end
end
