class SupportitemsController < ApplicationController
  before_action :set_supportitem, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @Requestitems = Requestitem.all
    redirect_to(:controller => "home" ,:action =>"index")
    # respond_with(@requestitems)

  end
  def new
      @supportitems = Supportitem.new
      @requestitem = Requestitem.find(params[:item])
  end

  def create
    @supportitems = Supportitem.new(supportitem_params)
    @supportitems.save
    redirect_to(:controller => "home" ,:action =>"index")
  end

  def edit
    
  end

  def update
    @supportitem.update(supportitem_params)
    # respond_with(@requestitem)
    redirect_to :action => "index"
  end

  private
    def set_supportitem
      @supportitem = Supportitem.find(params[:id])
    end

    def supportitem_params
      params.require(:supportitem).permit(:staff, :mail, :requestitem_id ,:groupid, :quantity, :place, :memo)
    end

end
