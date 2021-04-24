defmodule InmanaWeb.RestaurantsControllerTest do
  use InmanaWeb.ConnCase

  describe "create/2" do
    test "when all parameters are valid, creates the user", %{conn: conn} do
      params = %{name: "Siri Cascudo", email: "siri@cascudo.com"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:created)

      assert %{
        "message" => "Restaurant created!",
        "restaurant" => %{
          "email" => "siri@cascudo.com",
          "name" => "Siri Cascudo",
          "id" => _id
        }
      } = response
    end

    test "when there are invalid params, returns an error", %{conn: conn} do
      params = %{email: "siri@cascudo.com"}

      expected_response = %{"message" => %{"name" => ["can't be blank"]}}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert response == expected_response
    end
  end
end
