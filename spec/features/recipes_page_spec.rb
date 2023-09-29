require "rails_helper"

feature "The recipes page", js: true do
  before do
    visit '/recipes'
    FactoryBot.create(:new_recipe)
  end

  scenario "renders a list of recipes" do
    expect(page).to have_content 'My First Recipe'
  end
end