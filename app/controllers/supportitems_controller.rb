class SupportitemsController < ApplicationController

  def new
      @supportitems = Supportitem.new
      @requestitem = Requestitem.find(params[:item])
  end

   def create
    @supportitems = Supportitem.new(supportitem_params)
    @supportitems.save
    redirect_to(:controller => "home" ,:action =>"index")
  end

  private
    def set_supportitem
      @supportitem = Supportitem.find(params[:id])
    end

    def supportitem_params
      params.require(:supportitem).permit(:staff, :mail, :requestitem_id ,:groupid, :quantity, :place, :memo)
    end

end
