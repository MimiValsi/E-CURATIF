require "application_system_test_case"

class ArchivesTest < ApplicationSystemTestCase
  setup do
    @archive = archives(:one)
  end

  test "visiting the index" do
    visit archives_url
    assert_selector "h1", text: "Archives"
  end

  test "should create archive" do
    visit archives_url
    click_on "New archive"

    fill_in "Agent", with: @archive.agent
    fill_in "Ais", with: @archive.ais
    fill_in "Ameps", with: @archive.ameps
    fill_in "Brips", with: @archive.brips
    fill_in "Detail", with: @archive.detail
    fill_in "Devis", with: @archive.devis
    fill_in "Event", with: @archive.event
    fill_in "Oups", with: @archive.oups
    fill_in "Ouvrage", with: @archive.ouvrage
    fill_in "Priority", with: @archive.priority
    fill_in "Rte", with: @archive.rte
    fill_in "Source", with: @archive.source_id
    fill_in "Status", with: @archive.status
    fill_in "Target", with: @archive.target
    click_on "Create Archive"

    assert_text "Archive was successfully created"
    click_on "Back"
  end

  test "should update Archive" do
    visit archive_url(@archive)
    click_on "Edit this archive", match: :first

    fill_in "Agent", with: @archive.agent
    fill_in "Ais", with: @archive.ais
    fill_in "Ameps", with: @archive.ameps
    fill_in "Brips", with: @archive.brips
    fill_in "Detail", with: @archive.detail
    fill_in "Devis", with: @archive.devis
    fill_in "Event", with: @archive.event
    fill_in "Oups", with: @archive.oups
    fill_in "Ouvrage", with: @archive.ouvrage
    fill_in "Priority", with: @archive.priority
    fill_in "Rte", with: @archive.rte
    fill_in "Source", with: @archive.source_id
    fill_in "Status", with: @archive.status
    fill_in "Target", with: @archive.target
    click_on "Update Archive"

    assert_text "Archive was successfully updated"
    click_on "Back"
  end

  test "should destroy Archive" do
    visit archive_url(@archive)
    click_on "Destroy this archive", match: :first

    assert_text "Archive was successfully destroyed"
  end
end
