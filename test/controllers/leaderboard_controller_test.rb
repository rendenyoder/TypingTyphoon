require 'test_helper'

class LeaderboardControllerTest < ActionDispatch::IntegrationTest
  test "should get user_results" do
    get leaderboard_user_results_url
    assert_response :success
  end

  test "should get top_results" do
    get leaderboard_top_results_url
    assert_response :success
  end

end
