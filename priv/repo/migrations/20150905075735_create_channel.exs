defmodule Exchat.Repo.Migrations.CreateChannel do
  use Ecto.Migration

  def change do
    create table(:channels) do
      add :name, :string, null: false
      add :type, :integer, null: false
      timestamps()
    end
    create unique_index(:channels, [:name])
  end
end
