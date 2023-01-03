require "application_system_test_case"

class AppointmentsTest < ApplicationSystemTestCase
  setup do
    @appointment = appointments(:one)
  end

  test "visiting the index" do
    visit appointments_url
    assert_selector "h1", text: "Appointments"
  end

  test "should create appointment" do
    visit appointments_url
    click_on "New appointment"

    fill_in "Calendar", with: @appointment.calendar_id
    fill_in "Clinic", with: @appointment.clinic_id
    fill_in "Date", with: @appointment.date
    fill_in "Doctor", with: @appointment.doctor_id
    fill_in "Patient", with: @appointment.patient_id
    fill_in "Time", with: @appointment.time
    click_on "Create Appointment"

    assert_text "Appointment was successfully created"
    click_on "Back"
  end

  test "should update Appointment" do
    visit appointment_url(@appointment)
    click_on "Edit this appointment", match: :first

    fill_in "Calendar", with: @appointment.calendar_id
    fill_in "Clinic", with: @appointment.clinic_id
    fill_in "Date", with: @appointment.date
    fill_in "Doctor", with: @appointment.doctor_id
    fill_in "Patient", with: @appointment.patient_id
    fill_in "Time", with: @appointment.time
    click_on "Update Appointment"

    assert_text "Appointment was successfully updated"
    click_on "Back"
  end

  test "should destroy Appointment" do
    visit appointment_url(@appointment)
    click_on "Destroy this appointment", match: :first

    assert_text "Appointment was successfully destroyed"
  end
end
