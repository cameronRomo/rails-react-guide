require "rails_helper"

feature "the landing page", js: true do
  scenario "Launches the landing page with a call to action" do
    visit '/'
    expect(page).to have_content "Food Recipes"
    expect(page).to have_content "A curated list of recipes for the best homemade meal and delicacies."
  end
end
