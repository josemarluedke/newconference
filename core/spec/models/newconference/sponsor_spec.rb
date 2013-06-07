require 'spec_helper'

module Newconference
  describe Sponsor do
    describe 'validations' do
      it { should validate_presence_of :name }
      it { should validate_presence_of :logo }
      it { should validate_presence_of :kind }
    end
  end
end
