module Admin
  class AffiliatesController < ApplicationController
    before_filter :admin_authorize!
    before_action :set_affiliate, only: [:destroy, :edit, :update]

    def index
      @affiliates = Affiliate.all.page params[:page]
    end

    def new
      @affiliate = Affiliate.new
    end

    def create
      @affiliate = Affiliate.new(affiliate_params)
      if @affiliate.save
        redirect_to admin_affiliates_path, notice: "Affiliate is created successfully!"
      else
        render "new"
      end
    end

    def edit
    end

    def update
      @affiliate.update(affiliate_params)
      if @affiliate.save
        redirect_to admin_affiliates_path, notice: "Affiliate is created successfully!"
      else
        render "edit"
      end
    end

    def destroy
      @affiliate.destroy
      flash[:notice] = "Affiliate has been deleted successfully"
      redirect_to admin_affiliates_path
    end
    private

    def affiliate_params
      params.require(:affiliate).permit(:name, :link, :image, :description)
    end

    def set_affiliate
      @affiliate = Affiliate.find(params[:id])
    end

  end
end
