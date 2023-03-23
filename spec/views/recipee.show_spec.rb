# require 'rails_helper'

# RSpec.describe Recipee, type: :system do
#   describe 'Test Recipee show View' do
#     before(:each) do
#         @user = User.create(name: "ok")
#         @recipe = Recipee.create(user_id: @user.id ,name:"hello", preparation_time: 2, cooking_time: 1, description:"This is description", public: true)
#         visit("/recipees/#{@recipe.id}")
#     end
#     it "I can see recipe name" do
#       expect(page).to have_content( @recipe.name)
#     end

#     it 'I can see recipe description' do
#       expect(page).to have_content( @recipe.description)
#     end

#     it 'I can see Preparation time' do
#       expect(page).to have_content(@recipe.preparation_time)
#     end

#     it 'I can see Cooking time' do
#         expect(page).to have_content(@recipe.cooking_time)
#     end

#     it 'I can see Food' do
#         expect(page).to have_content("Food")
#     end

#     it 'I can see Quantity' do
#         expect(page).to have_content("Quantity")
#     end

#     it 'I can see Value' do
#         expect(page).to have_content("Value")
#     end

#     it 'I can see Actions' do
#         expect(page).to have_content("Actions")
#     end

#   end
# end
