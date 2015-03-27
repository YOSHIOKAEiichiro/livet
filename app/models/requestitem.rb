class Requestitem < ActiveRecord::Base
  
  has_many :supportitem , :dependent => :destroy

  def total_quantity_requestitem
    self.supportitem.sum(:quantity)
  end
end
