# About Apify

Apify is a REST API template with JWT based Auth built using
  * [Phoenix](https://www.phoenixframework.org/) v1.5.6 
  * [Guardian](https://github.com/ueberauth/guardian) v2.1 

It can be used as a base to further add more authenticated resources.

It provides the following routes:

* `/api/v1/register`

  ```bash
  curl --location --request POST 'http://localhost:4000/api/v1/register' \
  --header 'Content-Type: application/json' \
  --data-raw '{
    "user" : {
      "email" : "test@gmail.com",
      "password" : "password",
      "password_confirmation" : "password"
    }
  }'
  ```
  Response :
  ```javascript
  { "jwt": "XXXX.XXXX.XXXX" }
  ```
* `/api/v1/login`

  ```bash
  curl --location --request POST 'http://localhost:4000/api/v1/login' \
  --header 'Content-Type: application/json' \
  --data-raw '{
    "email" : "test@gmail.com",
    "password" : "password"
  }'
  ```
  Response :
  ```javascript
  { "jwt": "XXXX.XXXX.XXXX" }
  ```
* `/api/v1/my_user`

  ```bash
  curl --location --request GET 'http://localhost:4000/api/v1/my_user' \
  --header 'Authorization: Bearer XXXX.XXXX.XXXX'
  ```
  Response :
  ```javascript
  {
    "email": "test@gmail.com",
    "id": 1,
    "password_hash": "XXXX"
  }
  ```


# Running Apify

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
