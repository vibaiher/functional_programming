defmodule Watchlist.MovieController do
  use Watchlist.Web, :controller

  alias Watchlist.Movie

  def index(connection, _params) do
    movies = Repo.all(Movie)
    render connection, movies: movies
  end
end
