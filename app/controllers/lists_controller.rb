class ListsController < ApplicationController
	skip_filter :ensure_logged_in
	def index
		@lists = List.all
	end

	def destroy
		@list = List.find(params[:id])
		if @list.destroy
			respond_to do |format|
				format.js
				format.html { redirect_to lists_path }
			end
		else
			respond_to do |format|
				format.js { render plain: "0" }
				format.html { redirect_to lists_path, notice: "Delete failed." }
			end
		end
	end

	private

	def lists_params
		params.require(:list).permit!
	end

end
