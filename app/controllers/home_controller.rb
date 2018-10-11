class HomeController < ApplicationController
  def index

  	@doctor = User.all
  	@patient = Booking.all.where(doctor_id: current_user.id)
  end

  def search
  end
end
