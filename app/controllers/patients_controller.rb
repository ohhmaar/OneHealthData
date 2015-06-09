class PatientsController < ApplicationController
	before_action :find_patient, only: [:show, :edit, :update, :destroy]

	def index
		@patients = Patient.all.order("created_at DESC")
	end

	def show

	end

	def new
		@patient = current_user.patients.build
	end

	def create
		@patient = current_user.patients.build(patient_params)

		if @patient.save
			redirect_to @patient, notice: "Successfully created new Patient"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @patient.update(patient_params)
			redirect_to @patient, notice: "Patient was successfully updated!"
		else
			render 'edit'
		end
	end

	def destroy
		@patient.destroy
		redirect_to root_path
	end


	private

	def patient_params
		params.require(:patient).permit(:name, :insurance, :age, :document, :image)
	end   

	def find_patient
		@patient = Patient.find(params[:id])
	end
end
