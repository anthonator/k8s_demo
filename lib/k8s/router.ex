defmodule K8S.Router do
  use Phoenix.Router

  get "/", K8S.Controllers.Welcome, :show
end
