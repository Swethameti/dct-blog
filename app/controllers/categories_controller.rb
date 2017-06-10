class CategoriesController < ApplicationController

=begin
index
new
create
show
edit
update
destroy

		

		
=end
  def index
    @categories = Category.all
    #controllers sets up variables to be used inviews. index is a default action for a controller
  end


  def new
    @category = Category.new
  end


  def create
    @category = Category.new(params[:category].permit(:name))
    if @category.save
      redirect_to categories_path  #"/categories"
    else
      render action: "new"   # render means take it back
    end
  end
end
