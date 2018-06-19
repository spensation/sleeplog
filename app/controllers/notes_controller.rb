class NotesController < ApplicationController

	def new
		@note = Note.new
		@rest = Rest.find(params[:rest_id])
	end

	def create
		@rest = Rest.find(params[:rest_id])
		@note = @rest.notes.build(note_params)
		@note.save
		redirect_to rest_path(@rest)
	end

	private
		def note_params
			params.require(:note).permit(:content, :rest_id)
		end

end
