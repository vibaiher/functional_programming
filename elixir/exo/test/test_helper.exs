ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Exo.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Exo.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Exo.Repo)

