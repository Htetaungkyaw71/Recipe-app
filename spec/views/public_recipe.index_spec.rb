require 'rails_helper'

RSpec.describe Recipee, type: :system do
  describe 'Test Public Recipee index View' do
    before(:each) do
      @user = create(:user)
      login_as @user
      @recipe = create(:recipee, user_id: @user.id)
      visit('/public_recipes')
    end
    it 'I can see recipe name' do
      expect(page).to have_content(@recipe.name)
    end
    it 'I can see owner name' do
      expect(page).to have_content(@user.name)
    end
    it 'I can see Total food.' do
      expect(page).to have_content(@recipe.foods.length)
    end
    it 'I can see Total price' do
      expect(page).to have_content(@recipe.total)
    end

    it "When I click a show detail it redirects me to that recipe's show page" do
      click_link(href: "/recipees/#{@recipe.id}")
      expect(page).to have_content(@recipe.name)
      expect(page).to have_content(@recipe.description)
      expect(page).to have_content(@recipe.preparation_time)
      expect(page).to have_content(@recipe.cooking_time)
    end
  end
end
