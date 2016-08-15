class SupportsController < ApplicationController
  before_action :find_support, only: [:show, :destroy, :edit, :update]

  def index
    @supports = Support.order(created_at: :desc)
  end

  def show
  end

  def edit
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
