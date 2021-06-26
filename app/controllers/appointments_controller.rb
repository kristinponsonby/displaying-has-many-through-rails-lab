class AppointmentsController < ApplicationController
    def new
        @appointment = Appointment.new
    end

    def show
        @appointment = Appointment.find(params[:id])
    end
  
    def create
        appointment = Appointment.create(appointment_params)
    end
  
    def index
      @appointment = Appointments.all
    end
  
    private
  
    def appointment_params
      params.require(:appoitment).permit(:appointment_datetime)
    end
end 