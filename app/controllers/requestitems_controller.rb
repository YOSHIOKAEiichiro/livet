class RequestitemsController < ApplicationController
  before_action :set_requestitem, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @requestitems = Requestitem.all
    redirect_to(:controller => "home" ,:action =>"index")
    # respond_with(@requestitems)

  end

  def show
    #redirect_to(:controller => "home" ,:action =>"index")
     respond_with(@requestitem)
  end

  def new
    @requestitem = Requestitem.new
    respond_with(@requestitem)
  end

  def edit
  end

  def create
    @requestitem = Requestitem.new(requestitem_params)
    @requestitem.save
    respond_with(@requestitem)
  end

  def update
    @requestitem.update(requestitem_params)
    # respond_with(@requestitem)
    redirect_to :action => "index"
  end

  def destroy
    @requestitem.destroy
    respond_with(@requestitem)
  end

  private
    def set_requestitem
      @requestitem = Requestitem.find(params[:id])
    end

    def requestitem_params
      params.require(:requestitem).permit(:name, :staff, :mail, :groupid, :quantity, :place, :memo ,:area)
    end
end
