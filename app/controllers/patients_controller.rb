class PatientsController < ApplicationController
	def new
		@patient = Patient.new
end

def create
    @patient = Patient.new(patient_params)
    #puts patient_params
    if @patient.save
    redirect_to patients_path(patient_params[:id])
    flash[:notice] = "successful"
  else
    redirect_to new_patient_path
    flash[:error] = "unsuccessful"
  end
end

  def index
    @patients = Patient.all

  end

  def show
  @patient = Patient.find(params[:id])
  end


  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to patients_path
  end

  def edit
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :phone_number, :doctor_id, :address, :reasons)
  end

end
