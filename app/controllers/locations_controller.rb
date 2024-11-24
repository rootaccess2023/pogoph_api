class LocationsController < ApplicationController
  def index
    if params[:year].present?
      year = params[:year]
      @locations = Location.where("years ->> ? = ?", year, "true")
    else
      @locations = Location.all
    end

    render json: @locations
  end
end
