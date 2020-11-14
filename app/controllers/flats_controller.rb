class FlatsController < ApplicationController
  def index
    @flats = Flat.all
    if params[:query]
      query = "name LIKE '%#{params[:query]}%' OR description LIKE '%#{params[:query]}%'"
      @flats = Flat.where(query)
    end
    @flats_count = @flats.count
  end

  def top
    @flats = Flat.all.limit(3)
  end

  def new
    @flat = Flat.new
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to root_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture_url)
  end
end
