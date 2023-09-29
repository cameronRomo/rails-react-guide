require "rails_helper"

feature "The landing page", js: true do
  before do
    visit '/'
  end

  scenario "launches the landing page with a call to action" do
    expect(page).to have_content "Food Recipes"
    expect(page).to have_content "A curated list of recipes for the best homemade meal and delicacies."
  end

  scenario "navigates to recipes page after clinking 'view recipes' " do
    click_on "View Recipes"
    expect(page).to have_current_path '/recipes'
  end
end
