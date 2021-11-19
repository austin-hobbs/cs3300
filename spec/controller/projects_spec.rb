require "rails_helper"

def login_user(user)
  @request.env["devise.mapping"] = Devise.mappings[:user_confirmed]
  sign_in user
end

RSpec.describe ProjectsController, type: :controller do



  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description", category: "some category", purpose: "some purpose") }
    let(:user) { FactoryBot.create(:user) }
    it "returns a success response" do
      login_user(user)
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end
end