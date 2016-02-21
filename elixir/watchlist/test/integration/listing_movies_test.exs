defmodule ListingMoviesIntegrationTest do
  use ExUnit.Case, async: true
  use Plug.Test

  alias Watchlist.Router
  alias Watchlist.Movie
  alias Watchlist.Repo

  @opts Router.init([])
  test 'listing movies' do
    %Movie{name: "The Intern", rating: 5} |> Repo.insert!
    movies = Repo.all(Movie)
              |> Poison.encode!

    connection = conn(:get, "/movies")
    response = Router.call(connection, @opts)

    assert response.status == 200
    assert response.resp_body == movies
  end
end
