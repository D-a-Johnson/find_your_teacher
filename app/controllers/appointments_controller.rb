class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:edit, :update, :destroy]

  def create
    @appointment = Appointment.new(appointment_params)
    authorize @appointment
    @appointment.user = current_user
    @lesson.appointment = @appointment
    if @appointment.save
      redirect_to user_path(current_user)
    else
      render "lessons/show"
    end
  end

  def edit
    authorize @appointment
  end

  def update
    authorize @appointment
    @appointment.confirmed = true
    @appointment.save
    redirect_to user_path(current_user)
  end

  def destroy
    authorize @appointment
    @appointment.destroy
    redirect_to user_path(current_user)
  end

  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:user_id, :confirmed)
  end
end
