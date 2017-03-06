class ReviewMobilesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_review_mobile, only: [:show, :edit, :update, :destroy]

  # GET /review_mobiles
  # GET /review_mobiles.json
  def index
    #@review_mobiles = ReviewMobile.all
    @review_mobiles = Review.where("restaurant_id = " + params[:restaurant_id])
  end

  # GET /review_mobiles/1
  # GET /review_mobiles/1.json
  def show
  end

  # POST /review_mobiles
  # POST /review_mobiles.json
  def create
    review = Review.create params.permit(:place, :price, :attendance, :food, :descriprion, :restaurant_id, :name)
    render json: { id: review.id }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_mobile
      @review_mobile = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_mobile_params
      params.fetch(:review_mobile, {})
    end
end
