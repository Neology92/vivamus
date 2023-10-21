defmodule Vivamus.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :content, :string
    field :user_id, :id

    timestamps(type: :utc_datetime)
  end

  @required_fields ~w(content)a

  @type id :: integer()
  @type t :: %__MODULE__{
          content: String.t(),
          user_id: id(),
          id: id()
        }

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, @required_fields)
    |> validate_required(@required_fields)
  end
end
