require "test_helper"

class TolearnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tolearn = tolearns(:one)
  end

  test "should get index" do
    get tolearns_url, as: :json
    assert_response :success
  end

  test "should create tolearn" do
    assert_difference("Tolearn.count") do
      post tolearns_url, params: { tolearn: { text: @tolearn.text, title: @tolearn.title } }, as: :json
    end

    assert_response :created
  end

  test "should show tolearn" do
    get tolearn_url(@tolearn), as: :json
    assert_response :success
  end

  test "should update tolearn" do
    patch tolearn_url(@tolearn), params: { tolearn: { text: @tolearn.text, title: @tolearn.title } }, as: :json
    assert_response :success
  end

  test "should destroy tolearn" do
    assert_difference("Tolearn.count", -1) do
      delete tolearn_url(@tolearn), as: :json
    end

    assert_response :no_content
  end
end
