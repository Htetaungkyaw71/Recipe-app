require 'rails_helper'

RSpec.describe Recipee, type: :system do
  describe 'Test Recipee index View' do
    before(:each) do
        @user = User.create(name: "ok")
        @recipe = Recipee.create(user_id: @user.id ,name:"hello", preparation_time: 2, cooking_time: 1, description:"This is description", public: true)
      visit("/recipees")
    end
    it "I can see recipe name" do
      expect(page).to have_content( @recipe.name)
    end
    it 'I can see recipe description' do
      expect(page).to have_content( @recipe.description)
    end
    it 'I can see delete button.' do
      expect(page).to have_content("Remove")
    end
    it 'I can see Show detail' do
      expect(page).to have_content("Show detail")
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