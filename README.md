# Slim Phoenix

A minimal rebuild of Phoenix to demonstrate various components of Phoenix, Plug, Cowboy.

The code in this repo is part of my upcoming book on Phoenix. It incrementally builds a simple Phoenix replica starting from using a plain cowboy integration and then building a router, controller, view and template on top of it one at a time.

If you are curious and can't wait till the book the release, go clone the repo and run it locally. Checkout the repo to the initial commit and look for the changes with each new commit.

## How to Run locally

* Clone this project locally.
* From inside the project directory, run `mix do deps.get` to get dependencies.
* Visit [http://localhost:8080](http://localhost:8080)
  * '/' render "lib/templates/home.html.eex"
  * '/contact' render "lib/templates/contact.html.eex"
  * '/about' render "lib/templates/about.html.eex"
  * any other path renders "lib/templates/404.html.eex"

## Subscribe

To get notified when the book is released, please subscribe at [http://shankardevy.github.io/phoenix-book/](http://shankardevy.github.io/phoenix-book/)
