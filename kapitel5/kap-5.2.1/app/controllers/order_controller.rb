class OrderController < ApplicationController
  def index
  	@countries = Country.all.order(:name)
    @states = []
  end

  def update_states
  	country = Country.find(params[:country_id])
    @states = country.states.map{|s| [s.name, s.id]}.insert(0, "Bitte wählen Sie...")
  end
end
