class WepayAccountsController < ApplicationController
  before_action :set_wepay_account, only: [:show, :update, :destroy]

  # GET /wepay_accounts
  def index
    @wepay_accounts = WepayAccount.all

    render json: @wepay_accounts
  end

  # GET /wepay_accounts/1
  def show
    render json: @wepay_account
  end

  # POST /wepay_accounts
  def create
    @wepay_account = WepayAccount.new(wepay_account_params)

    if @wepay_account.save
      render json: @wepay_account, status: :created, location: @wepay_account
    else
      render json: @wepay_account.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wepay_accounts/1
  def update
    if @wepay_account.update(wepay_account_params)
      render json: @wepay_account
    else
      render json: @wepay_account.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wepay_accounts/1
  def destroy
    @wepay_account.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wepay_account
      @wepay_account = WepayAccount.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wepay_account_params
      params.require(:wepay_account).permit(:token, :user_id)
    end
end
