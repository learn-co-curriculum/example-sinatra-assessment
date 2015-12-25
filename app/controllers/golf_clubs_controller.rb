class GolfClubsController < ApplicationController 
  get "/clubs" do
    redirect_if_not_logged_in 
    @clubs = GolfClub.all
    erb :'golf_clubs/index'
  end

  get "/clubs/new" do
    redirect_if_not_logged_in 
    @error_message = params[:error]
    erb :'golf_clubs/new'
  end

  get "/clubs/:id/edit" do
    redirect_if_not_logged_in 
    @error_message = params[:error]
    @club = GolfClub.find(params[:id])
    erb :'golf_clubs/edit'
  end

  post "/clubs/:id" do
    redirect_if_not_logged_in 
    @club = GolfClub.find(params[:id])
    unless GolfClub.valid_params?(params)
      redirect "/clubs/#{@club.id}/edit?error=invalid golf club"
    end
    @club.update(params.select{|k|k=="name" || k=="manufacturer" || k=="golf_bag_id"})
    redirect "/clubs/#{@club.id}"
  end

  get "/clubs/:id" do
    redirect_if_not_logged_in 
    @club = GolfClub.find(params[:id])
    erb :'golf_clubs/show'
  end

  post "/clubs" do
    redirect_if_not_logged_in 
    unless GolfClub.valid_params?(params)
      redirect "/clubs/new?error=invalid golf club"
    end
    GolfClub.create(params)
    redirect "/clubs"
  end
end
