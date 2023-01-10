class HomeController < ApplicationController
  before_action :authenticate_account!, except: [:landing]


  def index
    @appointments = current_account.appointments
    @clinics = current_account.clinics
    @doctors = current_account.doctors
    @patients = current_account.patients
    @today = Date.today
    @time = DateTime.now
    @account = current_account.email.capitalize.split('@')[0]
  end

  def landing
  end

end
