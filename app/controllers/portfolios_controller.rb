class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:edit, :update, :show, :destroy]
layout "portfolio"
access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, 
site_admin: :all

  def index
     @portfolios = Portfolio.by_position
  end
  
  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end
  
  render nothing: true
  end
  
   def angular
     @angular_portfolio_items = Portfolio.angular
   end
  
  def new 
    @portfolios = Portfolio.new
    3.times {@portfolios.technologies.build}
  end
  
  def create
    @portfolios = Portfolio.new(portfolio_params)

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
  end
  
def update
 
 respond_to do |format|
  if @portfolios.update(portfolio_params)
    format.html { redirect_to portfolios_path, notice: 'IT WAS ALL UPDATED. NOW GO AWAY' }
 else
   format.html { render :edit }
  end
 end
end

def show
end

def destroy
  #LOOOK FOR
   #DESTROY MUAHAHHAHA 
   @portfolios.destroy
   #GO BACK YOU SUCK OKAY?
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'MUAHHAHA YOU DESTROYED IT' }
    end
end

  def portfolio_params
    params.require(:portfolio).permit(:title, 
                                      :subtitle, 
                                      :body, 
                                      :main_image,
                                      :thumb_image,
                                      technologies_attributes: [:name])
  end
  
end

def set_portfolio
  @portfolios = Portfolio.find(params[:id])
end