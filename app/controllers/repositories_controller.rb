class RepositoriesController < ApplicationController

  def index
  end

  def create
    Repository.create( body: @content )
  end

  def show
    @profile = Profile.find_by_username(params[:username]) ||
        Profile.create_from_username(params[:username])
    @repositories = RepositoryList.new(params[:username]).repositories
  end

  private def repositories_params
    params.require(:repository).permit( :name, :body, :url, :changed_at, :language, :number_of_forks, :number_of_stars)
  end

end
