class PinsController < ApplicationController

  def index
    @pins = Pin.all
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def show_by_name
    @pin = Pin.find_by_slug(params[:slug])
    render :show
  end
  #name-ruby-monk

  def new
    @pin = Pin.new
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def create
    @pin = Pin.create(pin_params)
    if @pin.valid?
      @pin.save
      redirect_to pin_path(@pin)
    else
      @errors = @pin.errors
      render :new
    end
  end

  def update
    @pin = Pin.find(params[:id])
    if @pin.update_attributes(pin_params)
      redirect_to pin_path(@pin), notice: "Pin has been successfully updated."
    else
      @errors = @pin.errors
      render action: "edit"
    end
  end

  private
  def pin_params
    params.require(:pin).permit(:title, :url, :slug, :text, :image)
  end

end