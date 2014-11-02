class AutocompleteController < ApplicationController
  
  respond_to :json
  
  def index
  end
  
  def search
    respond_with Country.where("name LIKE :prefix", prefix: "#{params[:search]}%").order(:name).as_json(only: [:name])
  end
  
end
