require 'test_helper'

class GameStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_stat = game_stats(:one)
  end

  test "should get index" do
    get game_stats_url, as: :json
    assert_response :success
  end

  test "should create game_stat" do
    assert_difference('GameStat.count') do
      post game_stats_url, params: { game_stat: { avg_rows: @game_stat.avg_rows, least_rows: @game_stat.least_rows, losses: @game_stat.losses, mode: @game_stat.mode, wins: @game_stat.wins } }, as: :json
    end

    assert_response 201
  end

  test "should show game_stat" do
    get game_stat_url(@game_stat), as: :json
    assert_response :success
  end

  test "should update game_stat" do
    patch game_stat_url(@game_stat), params: { game_stat: { avg_rows: @game_stat.avg_rows, least_rows: @game_stat.least_rows, losses: @game_stat.losses, mode: @game_stat.mode, wins: @game_stat.wins } }, as: :json
    assert_response 200
  end

  test "should destroy game_stat" do
    assert_difference('GameStat.count', -1) do
      delete game_stat_url(@game_stat), as: :json
    end

    assert_response 204
  end
end
