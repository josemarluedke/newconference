require 'spec_helper'

module Newconference
  describe Speaker do
    describe 'validations' do
      it { should validate_presence_of :name }
    end

    describe 'associations' do
      it { should have_many :keynotes }
    end

    describe 'scopes' do
      describe '.featured' do
        before do
          2.times { Speaker.make! featured: true }
          Speaker.make! featured: false
        end

        it { expect(Speaker.featured).to have(2).speakers }
      end
    end
  end
end
