class StatesController < ApplicationController

  def index
    @states = State.paginate(page: params[:page], per_page: 10)
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(params[:state])
    if @state.save
      flash[:success] = "Estado criado com sucesso."
      redirect_to action_name: "index"
    else
      render 'new'
    end
  end

end
