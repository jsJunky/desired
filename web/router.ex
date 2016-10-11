defmodule Desired.Router do
  use Desired.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Desired do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/players", PlayerController, :index
  end

  scope "/api", Desired do
    pipe_through :api

    get "/:id", ApiController, :index
    get "/players", ApiController, :all
  end
end
