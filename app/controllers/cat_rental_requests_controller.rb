class CatRentalRequestsController < ApplicationController

  def index
    @requests = CatRentalRequest.all.sort_by(&:start_date)
    render :index
  end

  def new
    @request = CatRentalRequest.new
    render :new
  end

  def create
    @request = CatRentalRequest.new(cat_rental_request_params)
    if @request.save
      redirect_to cat_rental_requests_url
    else
      render :new
    end
  end

  private
  def cat_rental_request_params
    params.require(:cat_rental_request).permit(:cat_id, :start_date, :end_date, :status)
  end
end
