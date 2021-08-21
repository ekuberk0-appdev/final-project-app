class OfferingsController < ApplicationController
  def index
    matching_offerings = Offering.all

    @list_of_offerings = matching_offerings.order({ :created_at => :desc })

    render({ :template => "offerings/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_offerings = Offering.where({ :id => the_id })

    @the_offering = matching_offerings.at(0)

    render({ :template => "offerings/show.html.erb" })
  end

  def create
    the_offering = Offering.new
    the_offering.service_id = params.fetch("query_service_id")
    the_offering.service_provider_id = params.fetch("query_service_provider_id")
    the_offering.favorites_count = params.fetch("query_favorites_count")

    if the_offering.valid?
      the_offering.save
      redirect_to("/offerings", { :notice => "Offering created successfully." })
    else
      redirect_to("/offerings", { :notice => "Offering failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_offering = Offering.where({ :id => the_id }).at(0)

    the_offering.service_id = params.fetch("query_service_id")
    the_offering.service_provider_id = params.fetch("query_service_provider_id")
    the_offering.favorites_count = params.fetch("query_favorites_count")

    if the_offering.valid?
      the_offering.save
      redirect_to("/offerings/#{the_offering.id}", { :notice => "Offering updated successfully."} )
    else
      redirect_to("/offerings/#{the_offering.id}", { :alert => "Offering failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_offering = Offering.where({ :id => the_id }).at(0)

    the_offering.destroy

    redirect_to("/offerings", { :notice => "Offering deleted successfully."} )
  end
end
