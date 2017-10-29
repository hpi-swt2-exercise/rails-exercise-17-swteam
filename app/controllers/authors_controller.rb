class AuthorsController < ApplicationController
	def show
	  @author = Author.find(params[:id])
	end

	def new
	end

	def create
          @author = Author.new(author_params)

	  @author.save
	  redirect_to @author
	  #render plain: params[:author].inspect
	end

	private
	  def author_params
		params.require(:author).permit(:author_first_name, :author_last_name, :author_homepage)
	  end
end
