class CampaignHostsController < ApplicationController
  before_action :set_campaign_host, only: [:show, :update, :destroy]

  # GET /campaign_hosts
  def index
    @campaign_hosts = CampaignHost.all

    render json: @campaign_hosts
  end

  # GET /campaign_hosts/1
  def show
    render json: @campaign_host
  end

  # POST /campaign_hosts
  def create
    @campaign_host = CampaignHost.new(campaign_host_params)

    if @campaign_host.save
      render json: @campaign_host, status: :created, location: @campaign_host
    else
      render json: @campaign_host.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campaign_hosts/1
  def update
    if @campaign_host.update(campaign_host_params)
      render json: @campaign_host
    else
      render json: @campaign_host.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campaign_hosts/1
  def destroy
    @campaign_host.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_host
      @campaign_host = CampaignHost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campaign_host_params
      params.require(:campaign_host).permit(:user_id, :self_description, :profile_image_url, :wepay_account_id)
    end
end
