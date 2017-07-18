require 'rails_helper'

RSpec.describe "Avaibilities", type: :request do
  describe "GET /avaibilities" do
    it "works! (now write some real specs)" do
      get avaibilities_path
      expect(response).to have_http_status(200)
    end
  end
end
