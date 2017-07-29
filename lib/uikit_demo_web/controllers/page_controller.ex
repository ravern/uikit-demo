defmodule UikitDemoWeb.PageController do
  use UikitDemoWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
