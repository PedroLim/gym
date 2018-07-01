require 'rails_helper'

RSpec.describe "MuscularGroups", type: :request do
  describe "GET /muscular_groups" do
    it "works! (now write some real specs)" do
      get muscular_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
