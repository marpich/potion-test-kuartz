class LotsController < ApplicationController
  def index
    @lots = Lot.all
  end

  def show
    @lot = Lot.find(params[:id])
  end

  def new
    @lot = Lot.new
  end

  def create
    @lot = Lot.new(lot_params)
    if @lot.save
      redirect_to lot_path(@lot)
    else
      render :new
    end
  end

  def edit
    @lot = Lot.find(params[:id])
  end

  def update
    @lot = Lot.find(params[:id])
    @lot.update(lot_params)
    # No need for app/views/restaurants/update.html.erb
    redirect_to lot_path(@lot)
  end

  def destroy
    @lot = Lot.find(params[:id])
    @lot.destroy
    redirect_to lots_path
  end

  private

  def lot_params
    params.require(:lot).permit(:name, :remaining_qty)
  end
end
