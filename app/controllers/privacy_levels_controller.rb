class PrivacyLevelsController < ApplicationController
  before_action :set_privacy_level, only: [:show, :update, :destroy]

  # GET /privacy_levels
  def index
    @privacy_levels = PrivacyLevel.all

    render json: @privacy_levels
  end

  # GET /privacy_levels/1
  def show
    render json: @privacy_level
  end

  # POST /privacy_levels
  def create
    @privacy_level = PrivacyLevel.new(privacy_level_params)

    if @privacy_level.save
      render json: @privacy_level, status: :created, location: @privacy_level
    else
      render json: @privacy_level.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /privacy_levels/1
  def update
    if @privacy_level.update(privacy_level_params)
      render json: @privacy_level
    else
      render json: @privacy_level.errors, status: :unprocessable_entity
    end
  end

  # DELETE /privacy_levels/1
  def destroy
    @privacy_level.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_privacy_level
      @privacy_level = PrivacyLevel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def privacy_level_params
      params.require(:privacy_level).permit(:name)
    end
end
