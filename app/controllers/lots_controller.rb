class LotsController < ApplicationController
  def index
    @lots = Lot.all
    @filtered_lots = filtered_lots
  end

  # def show
  #   @lot = Lot.find(params[:id])
  # end

  def new
    @lot = Lot.new
  end

  def create
    @lot = Lot.new(lot_params)
    if @lot.save
      redirect_to lots_path
    else
      render :new, notice: @lot.errors.messages
    end
  end

  def edit
    @lot = Lot.find(params[:id])
  end

  def update
    @lot = Lot.find(params[:id])
    @lot.update(lot_params)
    redirect_to lots_path
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

  def filtered_lots
    lots = Lot.all
    lots.select do |lot|
      lot.compositions.empty? && lot.remaining_qty.positive?
    end
  end
end
