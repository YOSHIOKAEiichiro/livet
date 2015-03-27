class HomeController < ApplicationController
  def index
    @requestitems = Requestitem.all
    @supportitems = Supportitem.all
  end

  def edit

  end

end
