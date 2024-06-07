class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about]

  def home
    @games = Game.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR category ILIKE :query"
      @games = @games.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def about

  end
  def dashboard

  end

end
