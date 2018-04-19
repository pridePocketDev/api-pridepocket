require 'rails_helper'

RSpec.describe "WepayAccounts", type: :request do
  describe "GET /wepay_accounts" do
    it "works! (now write some real specs)" do
      get wepay_accounts_path
      expect(response).to have_http_status(200)
    end
  end
end
