class PrescriptionsController < ApplicationController

  def new
    @prescription = Prescription.new
    @patient = Patient.find(params[:patient_id])
  end

  def create
    @prescription = Prescription.new(prescription_params)
    @patient = Patient.find(params[:patient_id])
    @prescription.patient_id = @patient.id
    @prescription.user_id = @current_user.id
    if @prescription.save
      redirect_to patient_path(@patient), notice: "Your prescription has been created."
    else
      render :new
    end
  end

private
  def prescription_params
    params.require(:prescription).permit(:medication_id, :dosage, :schedule, :starts_on, :ends_on, :patient_id, :user_id)
  end

end
