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

end
