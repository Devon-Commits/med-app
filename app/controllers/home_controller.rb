class HomeController < ApplicationController

  def index
    @appointments = current_account.appointments
    @clinics = current_account.clinics
    @doctors = current_account.doctors
    @patients = current_account.patients
    @today = Date.today
  end

end
