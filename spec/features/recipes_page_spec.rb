require "rails_helper"

feature "The recipes page", js: true do
  before do
    visit '/recipes'
    FactoryBot.create(:new_recipe)
  end

  scenario "renders a list of recipes" do
    expect(page).to have_content "My First Recipe"
    expect(page).to have_content "View Recipe"
  end

  scenario "navigates to recipe info page after clicking view recipe button" do
    click_on "View Recipe"
    expect(page).to have_current_path '/recipe/1'
  end
end