class BoatsController < ApplicationController
  before_action :set_boat, only: [:show, :edit, :update, :destroy]

  # GET /boats
  def index
    @boats = Boat.all
  end

  # GET /boats/1
  def show
  end

  # GET /boats/new
  def new
    @boat = Boat.new
  end

  # GET /boats/1/edit
  def edit
  end

  # POST /boats
  def create
    @boat = Boat.new(boat_params)
      if @boat.save
        redirect_to @boat
      else
          render :new 
      end
  end

  # PATCH/PUT /boats/1
  def update
      if @boat.update(boat_params)
        redirect_to @boat
      else
        render :edit 
      end
  end

  # DELETE /boats/1

  def destroy
    @boat.destroy
    redirect_to boats_url
  end

  private
    def set_boat
      @boat = Boat.find(params[:id])
    end


    def boat_params
      params.require(:boat).permit(:name, :max_containers, :location, :description, :contact)
    end
end
