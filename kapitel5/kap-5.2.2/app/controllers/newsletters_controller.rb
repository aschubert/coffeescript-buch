class NewslettersController < ApplicationController

  def index
    @newsletter = Newsletter.new
  end

  def create
  end

end
