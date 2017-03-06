class PhotosMobileController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  
  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.where("restaurant_id = " + params[:restaurant_id])
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      puts "Parametros: "
      puts params.inspect
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:restaurant_id, :photo)
    end
end
