# frozen_string_literal: true

VcSponsors::Engine.routes.draw do
  get "/sponsors" => "sponsors#index"
  # define routes here
end

Discourse::Application.routes.draw { mount ::VcSponsors::Engine, at: "/" }
