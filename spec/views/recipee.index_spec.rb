# require 'rails_helper'

# RSpec.describe Recipee, type: :system do
#   describe 'Test Recipee index View' do
#     before(:each) do
#       @recipe = Recipee.create(user_id: user.id ,name:"hello", preparation_time: 2, cooking_time: 1, description:"This is description", public: true)
#     end
#     it "I can see recipe name" do

#       visit("/recipees")
#       expect(page).to have_content( @recipe.name)
#     end
#     it 'I can see recipe description' do
#       sign_in user
#       visit("/recipees")
#       expect(page).to have_content( @recipe.description)
#     end
#     it 'I can see delete button.' do
#       sign_in user
#       visit("/recipees")
#       expect(page).to have_content("Remove")
#     end
#     it 'I can see Show detail' do
#       sign_in user
#       visit("/recipees")
#       expect(page).to have_content("Show detail")
#     end

#     it "When I click a show detail it redirects me to that recipe's show page" do
#       sign_in user
#       click_link(href: "/recipees/#{@recipe.id}")
#       expect(page).to have_content(@recipe.name)
#       expect(page).to have_content(@recipe.description)
#       expect(page).to have_content(@recipe.preparation_time)
#       expect(page).to have_content(@recipe.cooking_time)
#     end
#   end
# end
