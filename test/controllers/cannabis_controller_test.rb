require "test_helper"

class CannabisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cannabi = cannabis(:one)
  end

  test "should get index" do
    get cannabis_url, as: :json
    assert_response :success
  end

  test "should create cannabi" do
    assert_difference("Cannabi.count") do
      post cannabis_url, params: { cannabi: { health_benefit: @cannabi.health_benefit, medical_use: @cannabi.medical_use, strain: @cannabi.strain } }, as: :json
    end

    assert_response :created
  end

  test "should show cannabi" do
    get cannabi_url(@cannabi), as: :json
    assert_response :success
  end

  test "should update cannabi" do
    patch cannabi_url(@cannabi), params: { cannabi: { health_benefit: @cannabi.health_benefit, medical_use: @cannabi.medical_use, strain: @cannabi.strain } }, as: :json
    assert_response :success
  end

  test "should destroy cannabi" do
    assert_difference("Cannabi.count", -1) do
      delete cannabi_url(@cannabi), as: :json
    end

    assert_response :no_content
  end
end
