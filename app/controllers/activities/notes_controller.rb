class Activities::NotesController < ApplicationController
  before_action :set_activity

  def create
    @note = @activity.notes.new(note_params)
    @note.user = current_user
    @note.save
  end

  private

  def note_params
    params.require(:note).permit(:body)
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end
end