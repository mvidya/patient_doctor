class DoctorsController < ApplicationController

  before_action :authenticate_user!
	def new
	@doctor =Doctor.new
	end

	def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
    redirect_to doctors_path(doctor_params[:id])
    flash[:notice] = "successful"
  else
    redirect_to new_doctor_path
    flash[:error] = "unsuccessful!!"
  end
end

  def index
    @doctors = Doctor.all
  end
  
  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
    redirect_to doctors_path
  end
  
  def show
    @doctor = Doctor.find(params[:id])
  end

  private

    def doctor_params 
      params.require(:doctor).permit(:doctorname, :gender, :email, :specialization, :ph_number, :experience)
    end



end
