class HomeController < ApplicationController
  before_action :authenticate_account!

  def index
    @clinics = Clinic.all
    @doctors = Doctor.all
    @patients = Patient.all
    
  end

end
