class RestaurantsMobileController < ApplicationController
  #before_action :authenticate_user!
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurants_mobile
  # GET /restaurants_mobile.json
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants_mobile/1
  # GET /restaurants_mobile/1.json
  def show
  end

  # POST /restaurants_mobile
  # POST /restaurants_mobile.json
  def create
    #@restaurant = Restaurant.new(restaurant_params)
    #@restaurant.user_id = current_user.id
    #@restaurant.save()

    #respond_to do |format|
      #if @restaurant.save
        #format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        #format.json { render :index, status: :created, location: @restaurant }
      #else
        #format.html { render :new }
        #format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      #end
    #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:companyNmae, :description, :cnpj, :fantasyName, :latitude, :longitude, :city_id, :category_id)
    end
end
