class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def show
    site = Site.friendly.find params[:id]

    @title = site.title
    @header = site.header
    @body = site.body
  end
end
