class FormsController < ApplicationController

  def post
    @language = Language.create!(language_params)
    redirect_to :back
  end

  def index
    @language = Language.new
    if params[:q]
      @languages = Language.where(name: params[:q])
    else
      @languages = Language.all
    end
  end

  private
  def language_params
    binding.pry
    params.require(:language).permit(:name, :url)
  end
end
