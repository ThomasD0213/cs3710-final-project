require 'spec_helper'

RSpec.describe "Guests", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/guest/index"
      expect(response).to have_http_status(:success)
    end
  end

end
