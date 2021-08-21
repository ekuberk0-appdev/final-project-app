class NeighborhoodsController < ApplicationController
  def index
    matching_neighborhoods = Neighborhood.all

    @list_of_neighborhoods = matching_neighborhoods.order({ :created_at => :desc })

    render({ :template => "neighborhoods/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_neighborhoods = Neighborhood.where({ :id => the_id })

    @the_neighborhood = matching_neighborhoods.at(0)

    render({ :template => "neighborhoods/show.html.erb" })
  end

  def create
    the_neighborhood = Neighborhood.new
    the_neighborhood.name = params.fetch("query_name")
    the_neighborhood.service_locations_count = params.fetch("query_service_locations_count")

    if the_neighborhood.valid?
      the_neighborhood.save
      redirect_to("/neighborhoods", { :notice => "Neighborhood created successfully." })
    else
      redirect_to("/neighborhoods", { :notice => "Neighborhood failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_neighborhood = Neighborhood.where({ :id => the_id }).at(0)

    the_neighborhood.name = params.fetch("query_name")
    the_neighborhood.service_locations_count = params.fetch("query_service_locations_count")

    if the_neighborhood.valid?
      the_neighborhood.save
      redirect_to("/neighborhoods/#{the_neighborhood.id}", { :notice => "Neighborhood updated successfully."} )
    else
      redirect_to("/neighborhoods/#{the_neighborhood.id}", { :alert => "Neighborhood failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_neighborhood = Neighborhood.where({ :id => the_id }).at(0)

    the_neighborhood.destroy

    redirect_to("/neighborhoods", { :notice => "Neighborhood deleted successfully."} )
  end
end
