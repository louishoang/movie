module Admin
  class ShowsController < ApplicationController
    before_filter :admin_authorize!

    def index
      @shows = Show.order(:created_at).page params[:page]
    end
  end
end
