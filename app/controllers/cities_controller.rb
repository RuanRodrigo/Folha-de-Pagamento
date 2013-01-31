class CitiesController < ApplicationController

  def index
    @cities = City.paginate(page: params[:page], per_page: 10)
  end

  def new
    @city = City.new
    @states = State.all
  end

  def create
    @city = City.new(params[:city])
    if @city.save
      flash[:success] = "Cidade criada com sucesso."
      redirect_to action_name: "index"
    else
      render 'new'
    end
  end

  def destroy
    City.find(params[:id]).destroy
    flash[:success] = "Cidade deletada com sucesso."
    redirect_to cities_url
  end

end
