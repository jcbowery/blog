defmodule Blog.Repo.Migrations.CreateRoleTables do
  use Ecto.Migration

  def change do
    create table(:roles) do
      add :name, :string, null: false
    end

    create unique_index(:roles, :name)

    execute "INSERT INTO roles (name) VALUES ('user');"

    create table(:user_roles) do
      add :user_id, references(:users, type: :binary_id, on_delete: :delete_all), null: false
      add :role_id, references(:roles, on_delete: :delete_all), null: false
    end

    create unique_index(:user_roles, [:user_id, :role_id])
  end
end
