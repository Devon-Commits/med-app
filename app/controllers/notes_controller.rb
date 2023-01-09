class NotesController < ApplicationController

  def create
    @appointment = Appointment.find(params[:appointment_id])
    @note = @appointment.notes.create(note_params)
    redirect_to appointment_path(@appointment)
  end

  def destroy
    @appointment = Appointment.find(params[:appointment_id])
    @note = @appointment.notes.find(params[:id])
    @note.destroy
    redirect_to appointment_path(@appointment), status: :see_other
  end

  private
    def note_params
      params.require(:note).permit(:name, :body)
    end
end
