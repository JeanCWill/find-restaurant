class RestaurantsMobileController < ApplicationController
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:companyNmae, :description, :cnpj, :fantasyName, :latitude, :longitude, :city_id, :category_id, :open_sun, :open_mon, :open_tues, :open_wed, :open_thurs, :open_fri, :open_sat)
    end
end
