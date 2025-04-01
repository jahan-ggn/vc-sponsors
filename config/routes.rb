# frozen_string_literal: true

VcSponsors::Engine.routes.draw do
  get "/examples" => "examples#index"
  # define routes here
end

Discourse::Application.routes.draw { mount ::VcSponsors::Engine, at: "vc-sponsors" }
