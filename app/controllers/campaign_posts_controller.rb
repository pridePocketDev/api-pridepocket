class CampaignPostsController < ApplicationController
  before_action :set_campaign_post, only: [:show, :update, :destroy]

  # GET /campaign_posts
  def index
    @campaign_posts = CampaignPost.all

    render json: @campaign_posts
  end

  # GET /campaign_posts/1
  def show
    render json: @campaign_post
  end

  # POST /campaign_posts
  def create
    @campaign_post = CampaignPost.new(campaign_post_params)

    if @campaign_post.save
      render json: @campaign_post, status: :created, location: @campaign_post
    else
      render json: @campaign_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campaign_posts/1
  def update
    if @campaign_post.update(campaign_post_params)
      render json: @campaign_post
    else
      render json: @campaign_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campaign_posts/1
  def destroy
    @campaign_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_post
      @campaign_post = CampaignPost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campaign_post_params
      params.require(:campaign_post).permit(:campaign_id, :post_text)
    end
end
