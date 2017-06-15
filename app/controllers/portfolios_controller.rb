class PortfoliosController < ApplicationController
  def index
     @portfolios = Portfolio.all
  end
  
  def new 
    @portfolios = Portfolio.new
  end
  
  def create
    @portfolios = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolios.save
        format.html { redirect_to portfolios_path, notice: 'Blew blah live LIVE' }
        format.json { render :show, status: :created, location: @portfolios }
      else
        format.html { render :new }
        format.json { render json: @portfolios.errors, status: :unprocessable_entity }
      end
    end
  end
  
end