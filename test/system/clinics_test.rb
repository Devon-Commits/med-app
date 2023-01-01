require "application_system_test_case"

class ClinicsTest < ApplicationSystemTestCase
  setup do
    @clinic = clinics(:one)
  end

  test "visiting the index" do
    visit clinics_url
    assert_selector "h1", text: "Clinics"
  end

  test "should create clinic" do
    visit clinics_url
    click_on "New clinic"

    fill_in "Accounts", with: @clinic.accounts_id
    fill_in "Name", with: @clinic.name
    click_on "Create Clinic"

    assert_text "Clinic was successfully created"
    click_on "Back"
  end

  test "should update Clinic" do
    visit clinic_url(@clinic)
    click_on "Edit this clinic", match: :first

    fill_in "Accounts", with: @clinic.accounts_id
    fill_in "Name", with: @clinic.name
    click_on "Update Clinic"

    assert_text "Clinic was successfully updated"
    click_on "Back"
  end

  test "should destroy Clinic" do
    visit clinic_url(@clinic)
    click_on "Destroy this clinic", match: :first

    assert_text "Clinic was successfully destroyed"
  end
end
