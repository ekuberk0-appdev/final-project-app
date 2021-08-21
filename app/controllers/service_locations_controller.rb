class ServiceLocationsController < ApplicationController
  def index
    matching_service_locations = ServiceLocation.all

    @list_of_service_locations = matching_service_locations.order({ :created_at => :desc })

    render({ :template => "service_locations/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_service_locations = ServiceLocation.where({ :id => the_id })

    @the_service_location = matching_service_locations.at(0)

    render({ :template => "service_locations/show.html.erb" })
  end

  def create
    the_service_location = ServiceLocation.new
    the_service_location.neighborhood_id = params.fetch("query_neighborhood_id")
    the_service_location.service_provider_id = params.fetch("query_service_provider_id")

    if the_service_location.valid?
      the_service_location.save
      redirect_to("/service_locations", { :notice => "Service location created successfully." })
    else
      redirect_to("/service_locations", { :notice => "Service location failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_service_location = ServiceLocation.where({ :id => the_id }).at(0)

    the_service_location.neighborhood_id = params.fetch("query_neighborhood_id")
    the_service_location.service_provider_id = params.fetch("query_service_provider_id")

    if the_service_location.valid?
      the_service_location.save
      redirect_to("/service_locations/#{the_service_location.id}", { :notice => "Service location updated successfully."} )
    else
      redirect_to("/service_locations/#{the_service_location.id}", { :alert => "Service location failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_service_location = ServiceLocation.where({ :id => the_id }).at(0)

    the_service_location.destroy

    redirect_to("/service_locations", { :notice => "Service location deleted successfully."} )
  end
end
