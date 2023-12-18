class FlightsController < ApplicationController
  before_action :set_flight, only: %i[ show edit update destroy ]

  # GET /flights
  def index
    @flights = Flight.all
    @flights = @flights.where(departure_airport_id: params[:flight][:departure_airport_id]) if params[:flight] && params[:flight][:departure_airport_id].present?
    @flights = @flights.where(arrival_airport_id: params[:flight][:arrival_airport_id]) if params[:flight] && params[:flight][:arrival_airport_id].present?
   end


  # GET /flights/1
  def show
  end

  # GET /flights/new
  def new
    @flight = Flight.new
  end

  # GET /flights/1/edit
  def edit
  end

  # POST /flights
  def create
    @flight = Flight.new(flight_params)

    if @flight.save
      redirect_to @flight, notice: "Flight was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flights/1
  def update
    if @flight.update(flight_params)
      redirect_to @flight, notice: "Flight was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /flights/1
  def destroy
    @flight.destroy!
    redirect_to flights_url, notice: "Flight was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_params
      params.fetch(:flight, {})
    end
end
