defmodule Microblog.Repo.Migrations.CreateStalk do
  use Ecto.Migration

  def change do
    create table(:stalk) do
      add :actor_id, references(:user, on_delete: :nothing)
      add :target_id, references(:user, on_delete: :nothing)

      timestamps()
    end

    create index(:stalk, [:actor])
    create index(:stalk, [:target])
  end
end
