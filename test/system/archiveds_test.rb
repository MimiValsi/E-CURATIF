require "application_system_test_case"

class ArchivedsTest < ApplicationSystemTestCase
  setup do
    @archived = archiveds(:one)
  end

  test "visiting the index" do
    visit archiveds_url
    assert_selector "h1", text: "Archiveds"
  end

  test "should create archived" do
    visit archiveds_url
    click_on "New archived"

    fill_in "Agent", with: @archived.agent
    fill_in "Ais", with: @archived.ais
    fill_in "Ameps", with: @archived.ameps
    fill_in "Brips", with: @archived.brips
    fill_in "Detail", with: @archived.detail
    fill_in "Devis", with: @archived.devis
    fill_in "Event", with: @archived.event
    fill_in "Oups", with: @archived.oups
    fill_in "Ouvrage", with: @archived.ouvrage
    fill_in "Priority", with: @archived.priority
    fill_in "Rte", with: @archived.rte
    fill_in "Source", with: @archived.source_id
    fill_in "Status", with: @archived.status
    fill_in "Target", with: @archived.target
    click_on "Create Archived"

    assert_text "Archived was successfully created"
    click_on "Back"
  end

  test "should update Archived" do
    visit archived_url(@archived)
    click_on "Edit this archived", match: :first

    fill_in "Agent", with: @archived.agent
    fill_in "Ais", with: @archived.ais
    fill_in "Ameps", with: @archived.ameps
    fill_in "Brips", with: @archived.brips
    fill_in "Detail", with: @archived.detail
    fill_in "Devis", with: @archived.devis
    fill_in "Event", with: @archived.event
    fill_in "Oups", with: @archived.oups
    fill_in "Ouvrage", with: @archived.ouvrage
    fill_in "Priority", with: @archived.priority
    fill_in "Rte", with: @archived.rte
    fill_in "Source", with: @archived.source_id
    fill_in "Status", with: @archived.status
    fill_in "Target", with: @archived.target
    click_on "Update Archived"

    assert_text "Archived was successfully updated"
    click_on "Back"
  end

  test "should destroy Archived" do
    visit archived_url(@archived)
    click_on "Destroy this archived", match: :first

    assert_text "Archived was successfully destroyed"
  end
end
