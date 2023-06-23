class JournalistsController < ApplicationController

  def index
    @journalists = Journalist.all
  end

  def create
    @journalist = Journalist.new(posts_params)

    if @journalist.save
      redirect_to journalists_index_path
    else
      render :new
    end
  end

  def new
    @journalist = Journalist.new
  end

  private

  def posts_params
    params.require(:journalist).permit(:name, :lastname, :specilaty)
  end

end
