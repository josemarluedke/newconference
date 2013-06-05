require 'spec_helper'

module Conference
  describe Speaker do
    describe 'validations' do
      it { should validate_presence_of :name }
    end
  end
end
