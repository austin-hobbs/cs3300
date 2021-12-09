require 'rails_helper'

def login_user(user)
  
  sign_in user
end

RSpec.feature "Projects", type: :feature do

  

  context "Create new project" do
    let(:user) { FactoryBot.create(:user) }
    before(:each) do
      login_user(user)
      visit new_project_path
      fill_in "title_field", with: "Test"
    end

    scenario "should be successful" do
      fill_in "desc_field", with: "Test description"
      fill_in "cat_field", with: "Test category"
      fill_in "pur_field", with: "Test purpose"
      click_button "done_button"
      expect(page).to have_selector(:id, 'noticeMsg', text: "", visible: :all)
      end

    scenario "should fail" do
      click_button "done_button"
      expect(page).to have_content("Description can't be blank")
    end
  end

  context "Update project" do
    let(:user) { FactoryBot.create(:user) }
    let(:project) { Project.create(title: "Test title", description: "Test content", category: "some category", purpose: "some purpose") }
    before(:each) do
      login_user(user)
      visit edit_project_path(project)
    end

    scenario "should be successful" do
     within("form") do
      fill_in "desc_field", with: "Test description"
      fill_in "cat_field", with: "Test category"
      fill_in "pur_field", with: "Test purpose"
     end
     click_button "done_button"
     expect(page).to have_selector(:id, 'noticeMsg', text: "", visible: :all)
    end

    scenario "should fail" do
     within("form") do
       fill_in "desc_field", with: ""
     end
     click_button "done_button"
     expect(page).to have_content("Description can't be blank")
    end
  end

  context "Remove existing project" do
    let(:user) { FactoryBot.create(:user) }
    let!(:project) { Project.create(title: "Test title", description: "Test content", category: "some category", purpose: "some purpose") }
    before(:each) do
      login_user(user)
      visit edit_project_path(project)
    end
    scenario "remove project" do
     find('a', text:"Delete Project").click
     expect(Project.count).to eq(0)
  end
  end
end

