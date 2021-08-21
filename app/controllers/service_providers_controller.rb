class ServiceProvidersController < ApplicationController
  def index
    matching_service_providers = ServiceProvider.all

    @list_of_service_providers = matching_service_providers.order({ :created_at => :desc })

    render({ :template => "service_providers/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_service_providers = ServiceProvider.where({ :id => the_id })

    @the_service_provider = matching_service_providers.at(0)

    render({ :template => "service_providers/show.html.erb" })
  end

  def create
    the_service_provider = ServiceProvider.new
    the_service_provider.name = params.fetch("query_name")
    the_service_provider.address = params.fetch("query_address")
    the_service_provider.neighborhood_id = params.fetch("query_neighborhood_id")
    the_service_provider.image = params.fetch("query_image")
    the_service_provider.availability = params.fetch("query_availability")
    the_service_provider.email = params.fetch("query_email")
    the_service_provider.phone = params.fetch("query_phone")
    the_service_provider.service_locations_count = params.fetch("query_service_locations_count")
    the_service_provider.offerings_count = params.fetch("query_offerings_count")
    the_service_provider.reviews_count = params.fetch("query_reviews_count")

    if the_service_provider.valid?
      the_service_provider.save
      redirect_to("/service_providers", { :notice => "Service provider created successfully." })
    else
      redirect_to("/service_providers", { :notice => "Service provider failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_service_provider = ServiceProvider.where({ :id => the_id }).at(0)

    the_service_provider.name = params.fetch("query_name")
    the_service_provider.address = params.fetch("query_address")
    the_service_provider.neighborhood_id = params.fetch("query_neighborhood_id")
    the_service_provider.image = params.fetch("query_image")
    the_service_provider.availability = params.fetch("query_availability")
    the_service_provider.email = params.fetch("query_email")
    the_service_provider.phone = params.fetch("query_phone")
    the_service_provider.service_locations_count = params.fetch("query_service_locations_count")
    the_service_provider.offerings_count = params.fetch("query_offerings_count")
    the_service_provider.reviews_count = params.fetch("query_reviews_count")

    if the_service_provider.valid?
      the_service_provider.save
      redirect_to("/service_providers/#{the_service_provider.id}", { :notice => "Service provider updated successfully."} )
    else
      redirect_to("/service_providers/#{the_service_provider.id}", { :alert => "Service provider failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_service_provider = ServiceProvider.where({ :id => the_id }).at(0)

    the_service_provider.destroy

    redirect_to("/service_providers", { :notice => "Service provider deleted successfully."} )
  end
end
