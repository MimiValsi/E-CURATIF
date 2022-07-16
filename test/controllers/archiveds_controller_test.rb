require "test_helper"

class ArchivedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @archived = archiveds(:one)
  end

  test "should get index" do
    get archiveds_url
    assert_response :success
  end

  test "should get new" do
    get new_archived_url
    assert_response :success
  end

  test "should create archived" do
    assert_difference("Archived.count") do
      post archiveds_url, params: { archived: { agent: @archived.agent, ais: @archived.ais, ameps: @archived.ameps, brips: @archived.brips, detail: @archived.detail, devis: @archived.devis, event: @archived.event, oups: @archived.oups, ouvrage: @archived.ouvrage, priority: @archived.priority, rte: @archived.rte, source_id: @archived.source_id, status: @archived.status, target: @archived.target } }
    end

    assert_redirected_to archived_url(Archived.last)
  end

  test "should show archived" do
    get archived_url(@archived)
    assert_response :success
  end

  test "should get edit" do
    get edit_archived_url(@archived)
    assert_response :success
  end

  test "should update archived" do
    patch archived_url(@archived), params: { archived: { agent: @archived.agent, ais: @archived.ais, ameps: @archived.ameps, brips: @archived.brips, detail: @archived.detail, devis: @archived.devis, event: @archived.event, oups: @archived.oups, ouvrage: @archived.ouvrage, priority: @archived.priority, rte: @archived.rte, source_id: @archived.source_id, status: @archived.status, target: @archived.target } }
    assert_redirected_to archived_url(@archived)
  end

  test "should destroy archived" do
    assert_difference("Archived.count", -1) do
      delete archived_url(@archived)
    end

    assert_redirected_to archiveds_url
  end
end
