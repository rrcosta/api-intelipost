require 'rails_helper'

RSpec.describe SalesPlatform, type: :model do
  context "validation" do
    let(:salesPlatform) { create(:sales_platform) }

    it 'is valid with information' do
      expect(salesPlatform).to be_valid
    end
  end

end
