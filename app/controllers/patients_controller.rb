class PatientsController < ApplicationController

  def show
    @patient = Patient.find(params[:id])
    @prescriptions = @patient.prescriptions
  end


end
