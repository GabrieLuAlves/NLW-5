# Inmana

To start the Phoenix server:

  * Install dependencies with `mix deps.get`
  * Run `docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres`
    - You may need to run this command with sudo
    - You obviously need to install docker
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
