require 'application_system_test_case'

class RecipeesTest < ApplicationSystemTestCase
  setup do
    @recipee = recipees(:one)
  end

  test 'visiting the index' do
    visit recipees_url
    assert_selector 'h1', text: 'Recipees'
  end

  test 'should create recipee' do
    visit recipees_url
    click_on 'New recipee'

    fill_in 'Cooking time', with: @recipee.cooking_time
    fill_in 'Description', with: @recipee.description
    fill_in 'Name', with: @recipee.name
    fill_in 'Preparation time', with: @recipee.preparation_time
    check 'Public' if @recipee.public
    click_on 'Create Recipee'

    assert_text 'Recipee was successfully created'
    click_on 'Back'
  end

  test 'should update Recipee' do
    visit recipee_url(@recipee)
    click_on 'Edit this recipee', match: :first

    fill_in 'Cooking time', with: @recipee.cooking_time
    fill_in 'Description', with: @recipee.description
    fill_in 'Name', with: @recipee.name
    fill_in 'Preparation time', with: @recipee.preparation_time
    check 'Public' if @recipee.public
    click_on 'Update Recipee'

    assert_text 'Recipee was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Recipee' do
    visit recipee_url(@recipee)
    click_on 'Destroy this recipee', match: :first

    assert_text 'Recipee was successfully destroyed'
  end
end
