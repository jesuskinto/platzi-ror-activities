class ParticipantMailer < ApplicationMailer
    def new_activity_email
        @user = params[:user]
        @activity = params[:activity]
        mail to: @user.email, subject: 'Tarea Asignada'
    end
end
