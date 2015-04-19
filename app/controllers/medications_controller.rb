class MedicationsController < ApplicationController

  def show
    @medication = Medication.find(params[:id])
    @prescriptions = @medication.prescriptions
  end
end
