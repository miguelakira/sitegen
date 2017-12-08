class SitesController < ApplicationController
  def index
  end

  def show
    site = Site.search_by_name(params[:title])

    @title = site.title
    @header = site.header
    @body = site.body
  end
end
