require "rails_helper"

describe "Recipe API", type: :request do
  let!(:recipe) { FactoryBot.create(:new_recipe) }
  describe "GET /new_recipes" do
    it "returns all recipes" do
      get "/api/v1/new_recipes/index"

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe "POST /new_recipes" do
    it "creates a new recipe" do
      expect {
        post "/api/v1/new_recipes/create", params: { name: "My Second Recipe", ingredients: "eggs, mustard", instruction: "Scramble eggs, then add in the mustard" }
      }.to change { NewRecipe.count }.from(1).to(2)

      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /new_recipes/:id" do
    it "deletes a recipe" do
      expect {
        delete "/api/v1/destroy/#{recipe.id}"
      }.to change { NewRecipe.count }.from(1).to(0)

      expect(response).to have_http_status(:success)
    end
  end
end