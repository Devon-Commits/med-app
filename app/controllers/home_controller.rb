class HomeController < ApplicationController

  def index
    @clinics = Clinic.all
    @doctors = Doctor.all
    @patients = Patient.all
  end
  
  def calendar
    @d = Date.today
    @days = @d.end_of_month().day
    @first_day = @d.beginning_of_month.strftime('%A')
    @month = @d.strftime('%B')

  end

end
