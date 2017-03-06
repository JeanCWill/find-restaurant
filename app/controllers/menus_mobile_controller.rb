class MenusMobileController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.where("restaurant_id = " + params[:restaurant_id])
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:restaurant_id, :menu)
    end
end
