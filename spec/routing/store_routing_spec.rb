require "spec_helper"

describe StoreController do
  describe "routing" do

    it "routes to #index" do
      get("/").should route_to("store#index")
    end

  end
end