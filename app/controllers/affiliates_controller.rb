class AffiliatesController < ApplicationController
  def index
    @genres = Genre.all
    if params[:search]
      @affiliates = Affiliate.search(params[:search]).order("created_at").page(params[:page])
    else
      @affiliates = Affiliate.order("created_at").page(params[:page])
    end
  end
end
