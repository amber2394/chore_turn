require "rails_helper"

RSpec.describe "Routing to welcome page", :type => :routing do
  it "routes GET /welcome/index to welcome#index" do
    expect(:get => "/welcome/index").to route_to("welcome#index")
  end

  it "routes GET / to welcome#index" do
    expect(:get => "/").to route_to("welcome#index")
  end
end
