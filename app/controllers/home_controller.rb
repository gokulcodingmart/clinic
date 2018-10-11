class HomeController < ApplicationController
  def index

  	@doctor = User.all
  	@patient = Booking.all.where(doctor_id: current_user.id)
    
  end

  def search

  	@doctor = params[:doctorid]
    @patient = params[:patientid]
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
end
