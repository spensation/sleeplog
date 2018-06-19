class NotesController < ApplicationController

	def create
		@rest = Rest.find(params[:rest_id])
		@note = @rest.notes.build(note_params)
		@note.save
		redirect_to rest_path(@rest)
	end

	private
		def note_params
			params.require(:note).permit(:content)
		end

end
