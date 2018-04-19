class CampaignTagsController < ApplicationController
  before_action :set_campaign_tag, only: [:show, :update, :destroy]

  # GET /campaign_tags
  def index
    @campaign_tags = CampaignTag.all

    render json: @campaign_tags
  end

  # GET /campaign_tags/1
  def show
    render json: @campaign_tag
  end

  # POST /campaign_tags
  def create
    @campaign_tag = CampaignTag.new(campaign_tag_params)

    if @campaign_tag.save
      render json: @campaign_tag, status: :created, location: @campaign_tag
    else
      render json: @campaign_tag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campaign_tags/1
  def update
    if @campaign_tag.update(campaign_tag_params)
      render json: @campaign_tag
    else
      render json: @campaign_tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campaign_tags/1
  def destroy
    @campaign_tag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_tag
      @campaign_tag = CampaignTag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campaign_tag_params
      params.require(:campaign_tag).permit(:campaign_id, :tag_id)
    end
end
