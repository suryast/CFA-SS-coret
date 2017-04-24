require 'rails_helper'

RSpec.describe "OrderStatuses", type: :request do
  describe "GET /order_statuses" do
    it "works! (now write some real specs)" do
      get order_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
