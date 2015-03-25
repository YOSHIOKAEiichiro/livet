class HomeController < ApplicationController
  def index
    @requestitems = Requestitem.all
    @supportitems = Supportitem.all
  end

  def show
    @requestitems = Requestitem.all
  end
end
