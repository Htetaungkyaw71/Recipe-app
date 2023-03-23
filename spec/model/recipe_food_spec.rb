require 'rails_helper.rb'

RSpec.describe RecipeFood, type: :model do

    recipe = Recipee.new(name:"hello",preparation_time: 2,cooking_time: 1,description:"This is description",public: true )
    food = Food.new(name:"hello", measurement_unit: "grams", price: 10)

    subject { RecipeFood.new(quantity: 2, food_id: food.id, recipee_id: recipe.id )}
    before {subject.save}

    it 'quantity should be present' do
        subject.quantity = nil
        expect(subject).to_not be_valid
    end

    it 'quantity should be integer' do
        subject.quantity = "a"
        expect(subject).to_not be_valid
    end

    it 'food_id should be integer' do
        subject.food_id = nil
        expect(subject).to_not be_valid
    end

    it 'recipee_id should be integer' do
        subject.recipee_id = nil
        expect(subject).to_not be_valid
    end




end