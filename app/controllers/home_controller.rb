class HomeController < ApplicationController
  def index

  	@doctor = User.all
  	@patient = Booking.all.where(doctor_id: current_user.id)
    
  end

  def search

  	@doctor = params[:doctorid]
    @patient = params[:patientid]

    @book = Booking.create :doctor_id => @doctor, :patient_id => @patient

   end
end
