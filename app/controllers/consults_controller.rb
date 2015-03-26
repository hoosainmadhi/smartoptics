#This is on Test2 branch
class ConsultsController < ApplicationController
  
  def new
    @patient = Patient.find(params[:patient_id])
  end
  
  def destroy
    @patient = Patient.find(params[:patient_id])
    #@consult = @patient.consults.find_by_patient_id(params[:patient_id])
    @consult = @patient.consults.find(params[:id])
    @consult.destroy
    redirect_to "/patients/#{@patient.id}"
  end
  
  def show
    @patient = Patient.find(params[:id])
    #@consult = Consult.find_by_patient_id(params[:id])
  end
  
  def create
    @patient = Patient.find(params[:patient_id])
    @consult = @patient.consults.build(params[:consult])
    @patient.save
    flash[:success] = "Great! Patient Details has been created!"
    redirect_to "/patients/#{@patient.id}"
  end
  
  def edit
    @patient = Patient.find(params[:patient_id])
    @consult = @patient.consults.find(params[:id])
    @dispense = @consult.dispenses.find_by_consult_id(params[:id])
    
  end
  
  def update
    
    @patient = Patient.find(params[:patient_id])
    @consult = @patient.consults.find(params[:id])
    
    @consult.update_attributes(params[:consult])
    redirect_to @patient
  end
  
  
end
