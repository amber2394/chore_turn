require "rails_helper"

RSpec.describe "Routing to chroes", :type => :routing do
  it "routes GET /households/1/chores to chores#index" do
    expect(:get => "/households/1/chores").to route_to("chores#index", :household_id => "1")
  end

  it "routes GET /households/1/chores to chores#create " do
    expect(:post => "/households/1/chores").to route_to("chores#create", :household_id => "1")
  end

  it "routes GET /households/1/chores to chores#new" do
    expect(:get => "/households/1/chores/new").to route_to("chores#new", :household_id => "1")
  end

  it "routes GET /households/1/chores/1/edit to chores#edit" do
    expect(:get => "/households/1/chores/1/edit").to route_to("chores#edit", :household_id => "1", :id => "1")
  end

  it "routes GET /households/1/chores/1 to chores#show" do
    expect(:get => "/households/1/chores/1").to route_to("chores#show", :household_id => "1", :id => "1")
  end

  it "routes PATCH /households/1/chores/1 to chores#update" do
    expect(:patch => "/households/1/chores/1").to route_to("chores#update", :household_id => "1", :id => "1")
  end

  it "routes PUT /households/1/chores/1 to chores#update" do
   expect(:put => "/households/1/chores/1").to route_to("chores#update", :household_id => "1", :id => "1")
  end

  it "routes DELETE /households/1/chores/1 to chores#destroy" do
    expect(:delete => "/households/1/chores/1").to route_to("chores#destroy", :household_id => "1", :id => "1")
  end

end
