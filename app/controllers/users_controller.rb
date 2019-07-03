class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])
    @user = current_user
    authorize @user

    @lesson = Lesson.new
    authorize @lesson

    @lessons = current_user.lessons
    @appointments = current_user.appointments
  end
end
