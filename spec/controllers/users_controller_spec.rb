require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #show" do
    let!(:user1) { FactoryBot.create(:user) }
    it "returns http success" do
      get :show, params: { id: user1.id }
      expect(response.status).to eq 200
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response.status).to eq 200
    end
  end
end
