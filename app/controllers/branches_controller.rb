class BranchesController < ApplicationController

  def index
    @branches = Branch.paginate(page: params[:page], per_page: 10)
  end

  def new
    @branch = Branch.new
  end

  def create
    @branch = Branch.new(params[:branch])
    if @branch.save
      flash[:success] = "Filial criada com sucesso."
      redirect_to action_name: "index"
    else
      render 'new'
    end
  end

  def destroy
    Branch.find(params[:id]).destroy
    flash[:success] = "Filial deletada com sucesso."
    redirect_to branches_url
  end

end
