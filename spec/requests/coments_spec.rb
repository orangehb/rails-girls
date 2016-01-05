require 'rails_helper'

RSpec.describe "Coments", type: :request do
  describe "GET /coments" do
    it "works! (now write some real specs)" do
      get coments_path
      expect(response).to have_http_status(200)
    end
  end
end
