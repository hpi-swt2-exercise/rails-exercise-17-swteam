class AuthorsController < ApplicationController
	def index
	  @authors = Author.all
	end

	def show
	  @author = Author.find(params[:id])
	end

	def new
	  @author = Author.new
	end

	def edit
	  @author = Author.find(params[:id])
	end

	def create
	  if Paper.find_by(params[:paper_id]).blank?
	    @author = Author.new(author_params)
          else
	    @paper = Paper.find(params[:paper_id])
            @author = @paper.authors.create(author_params)
	  end
	  
	  if Paper.find_by(params[:paper_id]).blank?
	    if @author.save
              redirect_to @author
            else
                render 'new'
            end
	  else
	    if @author.save
                redirect_to @paper
            else
                render 'new'
            end
	  end
	  #render plain: params[:author].inspect
	end
	
	def update
	  @author = Author.find(params[:id])

	  if @author.update(author_params)
	    redirect_to @author
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @author = Author.find(params[:id])
	  @author.destroy

	  redirect_to authors_path
	end

	private
	  def author_params
		params.require(:author).permit(:first_name, :last_name, :homepage)
	  end
end
