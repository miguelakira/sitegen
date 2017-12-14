module Api
  module V1
    class SitesController < ApplicationController
      def index
        render json: Site.all

      end
    end
  end
end
