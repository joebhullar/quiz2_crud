class SupportsController < ApplicationController
  before_action :find_support, only: [:show, :destroy, :edit, :update]

  Suppport_Per_Page = 7

  def index
    @supports = Support.order(created_at: :desc)
                .page(params[:page])
                .per(Suppport_Per_Page)
                
  end

  def show
  end

  def edit
  end

  def new
    @support = Support.new
  end

  def create
    @support =Support.new support_params
    if @support.save
      redirect_to supports_path
    else
      render :new
    end
  end

  def update
    if @support.update support_params
      redirect_to supports_path
    else
      render :edit
    end
  end

  def destroy
    @support.destroy
    redirect_to root_path
  end

  private

  def find_support
    @support = Support.find(params[:id])
  end

  def support_params
    params.require(:support).permit([:name, :email, :department, :message])
  end
end
