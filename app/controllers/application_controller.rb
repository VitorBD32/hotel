class ApplicationController < ActionController::Base
end

class HotelsController < ApplicationController
    def index
      @hotels = Hotel.page(params[:page]).per(10)
    end
  end
  