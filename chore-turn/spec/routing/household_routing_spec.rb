require "rails_helper"

RSpec.describe "Routing to households", :type => :routing do
  it "routes GET /households to households#index" do
    expect(:get => "/households").to route_to("households#index")
  end

  it "routes POST /households to households#create" do
    expect(:post => "/households").to route_to("households#create")
  end

  it "routes GET /households/new to households#show" do
    expect(:get => "/households/new").to route_to("households#new")
  end

  it "routes GET /households/1/edit to households#edit" do
    expect(:get => "/households/1/edit").to route_to("households#edit", :id => "1")
  end

  it "routes GET /households/1 to households#show" do
    expect(:get => "/households/1").to route_to("households#show", :id => "1")
  end

  it "routes PATCH /households/1 to households#update" do
    expect(:patch => "/households/1").to route_to("households#update", :id => "1")
  end

  it "routes PUT /households/1 to households#update" do
    expect(:put => "/households/1").to route_to("households#update", :id => "1")
  end

  it "routes DELETE /households/1 to households#destroy" do
    expect(:delete => "/households/1").to route_to("households#destroy", :id => "1")
  end


end
