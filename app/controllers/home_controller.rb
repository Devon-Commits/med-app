class HomeController < ApplicationController

  def index
    @clinics = Clinic.all
    @doctors = Doctor.all
  end
  
end
