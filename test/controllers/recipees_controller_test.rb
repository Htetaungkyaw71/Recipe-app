require "test_helper"

class RecipeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipee = recipees(:one)
  end

  test "should get index" do
    get recipees_url
    assert_response :success
  end

  test "should get new" do
    get new_recipee_url
    assert_response :success
  end

  test "should create recipee" do
    assert_difference("Recipee.count") do
      post recipees_url, params: { recipee: { cooking_time: @recipee.cooking_time, description: @recipee.description, name: @recipee.name, preparation_time: @recipee.preparation_time, public: @recipee.public } }
    end

    assert_redirected_to recipee_url(Recipee.last)
  end

  test "should show recipee" do
    get recipee_url(@recipee)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipee_url(@recipee)
    assert_response :success
  end

  test "should update recipee" do
    patch recipee_url(@recipee), params: { recipee: { cooking_time: @recipee.cooking_time, description: @recipee.description, name: @recipee.name, preparation_time: @recipee.preparation_time, public: @recipee.public } }
    assert_redirected_to recipee_url(@recipee)
  end

  test "should destroy recipee" do
    assert_difference("Recipee.count", -1) do
      delete recipee_url(@recipee)
    end

    assert_redirected_to recipees_url
  end
end
