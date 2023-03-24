require 'rails_helper'

RSpec.describe Recipee, type: :system do
  describe 'Test Recipee index View' do
    before do
      driven_by(:rack_test)
    end

    before(:each) do
      @user = create(:user)
      login_as @user
      @recipe = create(:recipee, user_id: @user.id)
      visit('/recipees')
    end

    it 'I can see recipe name' do
      expect(page).to have_content(@recipe.name)
    end
    it 'I can see recipe description' do
      expect(page).to have_content(@recipe.description)
    end
    it 'I can see delete button.' do
      expect(page).to have_content('Remove')
    end
    it 'I can see Show detail' do
      expect(page).to have_content('Show detail')
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
