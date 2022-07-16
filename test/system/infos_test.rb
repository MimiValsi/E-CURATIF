require "application_system_test_case"

class InfosTest < ApplicationSystemTestCase
  setup do
    @info = infos(:one)
  end

  test "visiting the index" do
    visit infos_url
    assert_selector "h1", text: "Infos"
  end

  test "should create info" do
    visit infos_url
    click_on "New info"

    fill_in "Agent", with: @info.agent
    fill_in "Ais", with: @info.ais
    fill_in "Ameps", with: @info.ameps
    fill_in "Brips", with: @info.brips
    fill_in "Detail", with: @info.detail
    fill_in "Devis", with: @info.devis
    fill_in "Event", with: @info.event
    fill_in "Oups", with: @info.oups
    fill_in "Ouvrage", with: @info.ouvrage
    fill_in "Priority", with: @info.priority
    fill_in "Rte", with: @info.rte
    fill_in "Source", with: @info.source_id
    fill_in "Target", with: @info.target
    click_on "Create Info"

    assert_text "Info was successfully created"
    click_on "Back"
  end

  test "should update Info" do
    visit info_url(@info)
    click_on "Edit this info", match: :first

    fill_in "Agent", with: @info.agent
    fill_in "Ais", with: @info.ais
    fill_in "Ameps", with: @info.ameps
    fill_in "Brips", with: @info.brips
    fill_in "Detail", with: @info.detail
    fill_in "Devis", with: @info.devis
    fill_in "Event", with: @info.event
    fill_in "Oups", with: @info.oups
    fill_in "Ouvrage", with: @info.ouvrage
    fill_in "Priority", with: @info.priority
    fill_in "Rte", with: @info.rte
    fill_in "Source", with: @info.source_id
    fill_in "Target", with: @info.target
    click_on "Update Info"

    assert_text "Info was successfully updated"
    click_on "Back"
  end

  test "should destroy Info" do
    visit info_url(@info)
    click_on "Destroy this info", match: :first

    assert_text "Info was successfully destroyed"
  end
end
