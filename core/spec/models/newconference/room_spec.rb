require 'spec_helper'

module Newconference
  describe Room do
    describe 'validations' do
      it { should validate_presence_of :name }
    end
  end
end
