class CampaignDonorPostsController < ApplicationController
  before_action :set_campaign_donor_post, only: [:show, :update, :destroy]

  # GET /campaign_donor_posts
  def index
    @campaign_donor_posts = CampaignDonorPost.all

    render json: @campaign_donor_posts
  end

  # GET /campaign_donor_posts/1
  def show
    render json: @campaign_donor_post
  end

  # POST /campaign_donor_posts
  def create
    @campaign_donor_post = CampaignDonorPost.new(campaign_donor_post_params)

    if @campaign_donor_post.save
      render json: @campaign_donor_post, status: :created, location: @campaign_donor_post
    else
      render json: @campaign_donor_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campaign_donor_posts/1
  def update
    if @campaign_donor_post.update(campaign_donor_post_params)
      render json: @campaign_donor_post
    else
      render json: @campaign_donor_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campaign_donor_posts/1
  def destroy
    @campaign_donor_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_donor_post
      @campaign_donor_post = CampaignDonorPost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campaign_donor_post_params
      params.require(:campaign_donor_post).permit(:campaign_id, :donor_id, :post_text)
    end
end
