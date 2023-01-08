class HomeController < ApplicationController

  def index
    @clinics = Clinic.all
    @doctors = Doctor.all
    @patients = Patient.all
    @today = Date.today
  end

end
