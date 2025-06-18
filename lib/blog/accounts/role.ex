defmodule Blog.Accounts.Role do
  use Ecto.Schema
  alias Blog.Accounts.User

  schema "roles" do
    field :name, :string
    many_to_many :users, User, join_through: "user_roles"
  end
end
