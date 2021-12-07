require 'rails_helper'

def login_user(user)
  
  sign_in user
end

RSpec.feature "Projects", type: :feature do

  

  # context "Create new project" do
  #   let(:user) { FactoryBot.create(:user) }
  #   before(:each) do
  #     login_user(user)
  #     visit new_project_path
  #     within("form") do
  #       fill_in "Title", with: "Test title"
  #     end
  #   end

  #   scenario "should be successful" do
  #     fill_in "Description", with: "Test description"
  #     fill_in "Category", with: "Test category"
  #     fill_in "Purpose", with: "Test purpose"
  #     click_button "Create Project"
  #     expect(page).to have_content("Project was successfully created")
  #   end

  #   scenario "should fail" do
  #     click_button "Create Project"
  #     expect(page).to have_content("Description can't be blank")
  #   end
  # end

  # context "Update project" do
  #   let(:user) { FactoryBot.create(:user) }
  #   let(:project) { Project.create(title: "Test title", description: "Test content", category: "some category", purpose: "some purpose") }
  #   before(:each) do
  #     login_user(user)
  #     visit edit_project_path(project)
  #   end

  #   scenario "should be successful" do
  #    within("form") do
  #      fill_in "Description", with: "New description content"
  #      fill_in "Category", with: "New Test category"
  #      fill_in "Purpose", with: "New Test purpose"
  #    end
  #    click_button "Update Project"
  #    expect(page).to have_content("Project was successfully updated")
  #   end

  #   scenario "should fail" do
  #    within("form") do
  #      fill_in "Description", with: ""
  #    end
  #    click_button "Update Project"
  #    expect(page).to have_content("Description can't be blank")
  #   end
  # end

  # context "Remove existing project" do
  #   let(:user) { FactoryBot.create(:user) }
  #   let!(:project) { Project.create(title: "Test title", description: "Test content", category: "some category", purpose: "some purpose") }
  #   before(:each) do
  #     login_user(user)
  #   end
  #   scenario "remove project" do
  #    visit projects_path
  #    click_link "Destroy"
  #    expect(page).to have_content("Project was successfully destroyed")
  #    expect(Project.count).to eq(0)
  # end
  # end
end

