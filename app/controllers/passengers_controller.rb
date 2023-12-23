class PassengersController < ApplicationController
  before_action :set_passenger, only: %i[ show edit update destroy ]

  # GET /passengers
  def index
    @passengers = Passenger.all
  end

  # GET /passengers/1
  def show
  end

  # GET /passengers/new
  def new
    @passenger = Passenger.new
  end

  # GET /passengers/1/edit
  def edit
  end

  # POST /passengers
  def create
    @passenger = Passenger.new(passenger_params)

    if @passenger.save
      redirect_to @passenger, notice: "Passenger was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /passengers/1
  def update
    if @passenger.update(passenger_params)
      redirect_to @passenger, notice: "Passenger was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /passengers/1
  def destroy
    @passenger.destroy!
    redirect_to passengers_url, notice: "Passenger was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passenger
      @passenger = Passenger.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def passenger_params
      params.require(:passenger).permit(:name, :email)
    end
end
