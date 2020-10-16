defmodule Apify.Guardian do
  use Guardian, otp_app: :myApi
  alias Apify.Accounts.User

  def subject_for_token(user = %User{}, _claims) do
    sub = to_string(user.id)
    {:ok, sub}
  end

  def subject_for_token(_, _) do
    {:error, :reason_for_error}
  end

  def resource_from_claims(%{} = claims) do
    id = claims["sub"]
    resource = Apify.Accounts.get_user!(id)
    {:ok,  resource}
  end

  def resource_from_claims(_claims) do
    {:error, :reason_for_error}
  end
end
