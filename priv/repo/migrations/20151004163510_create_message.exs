defmodule Exchat.Repo.Migrations.CreateMessage do
  use Ecto.Migration

  def change do
    create table(:messages) do
      add :text, :text, null: false
      add :channel_id, references(:channels), null: false
      add :user_id, references(:users), null: false
      timestamps()
    end
    create index(:messages, [:channel_id])
    create index(:messages, [:user_id])
  end
end
