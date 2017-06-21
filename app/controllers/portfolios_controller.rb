class PortfoliosController < ApplicationController
  def index
     @portfolios = Portfolio.all
  end
  
   def angular
     @angular_portfolio_items = Portfolio.angular
   end
  
  def new 
    @portfolios = Portfolio.new
    3.times {@portfolios.technologies.build}
  end
  
  def create
    @portfolios = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, 
    technologies_attributes: [:name]))

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
  def edit
    @portfolios = Portfolio.find(params[:id])
  end
  
def update
 @portfolios = Portfolio.find(params[:id])
 
 respond_to do |format|
  if @portfolios.update(params.require(:portfolio).permit(:title, :subtitle, :body))
    format.html { redirect_to portfolios_path, notice: 'IT WAS ALL UPDATED. NOW GO AWAY' }
 else
   format.html { render :edit }
  end
 end
end

def show
  @portfolios = Portfolio.find(params[:id])
end

def destroy
  #LOOOK FOR
   @portfolios = Portfolio.find(params[:id])
   #DESTROY MUAHAHHAHA 
   @portfolios.destroy
   #GO BACK YOU SUCK OKAY?
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'MUAHHAHA YOU DESTROYED IT' }
    end
end
  
end