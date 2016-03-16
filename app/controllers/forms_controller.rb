class FormsController < ApplicationController

  def post
    @cats = Cat.find[:params][:id]
  end

  def index
    @cats = Cat.all
  end
end
