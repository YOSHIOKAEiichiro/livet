class HomeController < ApplicationController
  def index
    @requestitems = Requestitem.all
  end

  def show
    @requestitems = Requestitem.all
  end
end
