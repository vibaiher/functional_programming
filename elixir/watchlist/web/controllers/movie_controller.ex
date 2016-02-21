defmodule Watchlist.MovieController do
  use Watchlist.Web, :controller

  def index(connection, _params) do
    render connection, movies: []
  end
end
