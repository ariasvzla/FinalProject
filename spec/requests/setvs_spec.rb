require 'rails_helper'

RSpec.describe "Setvs", type: :request do
  describe "GET /setvs" do
    it "works! (now write some real specs)" do
      get setvs_path
      expect(response).to have_http_status(200)
    end
  end
end
