defmodule Blog.Repo.Migrations.AddAdminToRoles do
  use Ecto.Migration

  def change do
    execute "INSERT INTO roles (name) VALUES ('admin');"
  end
end
