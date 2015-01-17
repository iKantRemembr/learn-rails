class VisitorsController < ApplicationController
  
  def new
    @owner = Owner.new
    
    flash.now[:notice] = 'Welcom'
    flash.now[:alert] = 'My birthday is soon'
  end
  
end