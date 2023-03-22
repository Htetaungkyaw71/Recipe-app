require 'rails_helper.rb'

RSpec.describe Recipee, type: :model do
    subject { Recipee.new(name:"hello",preparation_time: 2,cooking_time: 1,description:"This is description",public: true )}
    before {subject.save}

    it 'name should be present' do
        subject.name = nil
        expect(subject).to_not be_valid
    end

    it 'preparation_time greater than zero' do
        subject.preparation_time = -1
        expect(subject).to_not be_valid
    end

    it 'preparation_time should be integer' do
        subject.preparation_time = "a"
        expect(subject).to_not be_valid
    end

    it 'cooking_time greater than zero' do
        subject.cooking_time = -1
        expect(subject).to_not be_valid
    end

    it 'cooking_time should be integer' do
        subject.cooking_time = "a"
        expect(subject).to_not be_valid
    end


    it 'description should not too long' do
        subject.description = 'a' * 600
        expect(subject).to_not be_valid
    end

    it 'name should not too long' do
        subject.name = 'a' * 60
        expect(subject).to_not be_valid
    end

    it 'public should be present' do
        subject.public = nil
        expect(subject).to_not be_valid
    end

end