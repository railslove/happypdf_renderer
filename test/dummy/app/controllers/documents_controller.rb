class DocumentsController < ApplicationController

  def index
    respond_to do |format|
      format.html
      format.pdf {render :pdf => "documents", :data => {:pdt_id=>4, :number => 111, :name => "test"}}
    end
  end

end