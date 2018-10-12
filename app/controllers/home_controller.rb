class HomeController < ApplicationController

  def index
  	@doctor = User.all.where('doctor', true)
  	@patient = Booking.all.where(doctor_id: current_user.id)
  end

  def search
  	@doctor = params[:doctorid]
    @patient = current_user.id
    @date = params[:date]
    @book = Booking.create :doctor_id => @doctor, :patient_id => @patient, :date => @date
    respond_to do |format|
      if @book  
        format.html { redirect_to root_path, notice: 'Appointment was sucessfully booked.' }
        format.json { render :show, status: :created, location: root_path }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

   def save_booking_details
     
   end

end
