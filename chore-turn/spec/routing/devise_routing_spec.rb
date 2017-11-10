require "rails_helper"

RSpec.describe "Routing to devise", :type => :routing do
  it "routes GET /users/sign_in to devise/sessions#new" do
    expect(:get => "/users/sign_in").to route_to("devise/sessions#new")
  end
  it "routes POST /users/sign_in to devise/sessions#create" do
    expect(:post => "/users/sign_in").to route_to("devise/sessions#create")
  end

  it "routes DELETE /users/sign_out to devise/sessions#destroy" do
    expect(:delete => "/users/sign_out").to route_to("devise/sessions#destroy")
  end

  it "routes GET /users/password/new to devise/passwords#new" do
    expect(:get => "/users/password/new").to route_to("devise/passwords#new")
  end

  it "routes GET /users/password/edit to devise/passwords#edit" do
    expect(:get => "/users/password/edit").to route_to("devise/passwords#edit")
  end

  it "routes PATCH /users/password to devise/passwords#update" do
    expect(:patch => "/users/password").to route_to("devise/passwords#update")
  end

  it "routes PUT /users/password to devise/passwords#update" do
    expect(:put => "/users/password").to route_to("devise/passwords#update")
  end

  it "routes POST /users/password to devise/passwords#create" do
    expect(:post => "/users/password").to route_to("devise/passwords#create")
  end

  it "routes GET /users/cancel to devise/registrations#cancel" do
    expect(:get => "/users/cancel").to route_to("devise/registrations#cancel")
  end

  it "routes GET /users/sign_up to devise/registrations#new" do
    expect(:get => "/users/sign_up").to route_to("devise/registrations#new")
  end

  it "routes GET /users/password to devise/registrations#edit" do
    expect(:get => "/users/edit").to route_to("devise/registrations#edit")
  end

  it "routes PATCH /users to devise/registrations#update" do
    expect(:patch => "/users").to route_to("devise/registrations#update")
  end

  it "routes PUT /users to devise/registrations#update" do
    expect(:put => "/users").to route_to("devise/registrations#update")
  end

  it "routes DELETE /users to devise/registrations#destroy" do
    expect(:delete => "/users").to route_to("devise/registrations#destroy")
  end

  it "routes POST /users to devise/registrations#create" do
    expect(:post => "/users").to route_to("devise/registrations#create")
  end
end
