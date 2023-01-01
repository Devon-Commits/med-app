class HomeController < ApplicationController

  def index
    @clinics = Clinic.all
    @doctors = Doctor.all
    @patients = Patient.all
  end
  
end
