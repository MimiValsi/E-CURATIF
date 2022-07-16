require "test_helper"

class InfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @info = infos(:one)
  end

  test "should get index" do
    get infos_url
    assert_response :success
  end

  test "should get new" do
    get new_info_url
    assert_response :success
  end

  test "should create info" do
    assert_difference("Info.count") do
      post infos_url, params: { info: { agent: @info.agent, ais: @info.ais, ameps: @info.ameps, brips: @info.brips, detail: @info.detail, devis: @info.devis, event: @info.event, oups: @info.oups, ouvrage: @info.ouvrage, priority: @info.priority, rte: @info.rte, source_id: @info.source_id, target: @info.target } }
    end

    assert_redirected_to info_url(Info.last)
  end

  test "should show info" do
    get info_url(@info)
    assert_response :success
  end

  test "should get edit" do
    get edit_info_url(@info)
    assert_response :success
  end

  test "should update info" do
    patch info_url(@info), params: { info: { agent: @info.agent, ais: @info.ais, ameps: @info.ameps, brips: @info.brips, detail: @info.detail, devis: @info.devis, event: @info.event, oups: @info.oups, ouvrage: @info.ouvrage, priority: @info.priority, rte: @info.rte, source_id: @info.source_id, target: @info.target } }
    assert_redirected_to info_url(@info)
  end

  test "should destroy info" do
    assert_difference("Info.count", -1) do
      delete info_url(@info)
    end

    assert_redirected_to infos_url
  end
end
