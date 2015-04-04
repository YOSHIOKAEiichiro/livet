class HomeController < ApplicationController
  def index
    @requestitems = Requestitem.order(params[:sort])
    @supportitems = Supportitem.all
  end
  def index2
    @requestitems = Requestitem.order(params[:sort])
    @supportitems = Supportitem.all
  end

  def edit

  end

end
