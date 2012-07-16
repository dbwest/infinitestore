require 'spec_helper'

describe StoreController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'belts'" do
  	it "returns http success" do
  		get 'belts'
  		response.should be_success
  	end
  end

  describe "GET 'sunglasses'" do
  	it "returns http success" do
  		get 'sunglasses'
  		response.should be_success
  	end
  end

  describe "GET 'shirts'" do
  	it "returns http success" do
  		get 'shirts'
  		response.should be_success
  	end
  end

  describe "GET 'shoes'" do
  	it "returns http success" do
  		get 'shoes'
  		response.should be_success
  	end
  end

  describe "GET 'watches'" do
  	it "returns http success" do
  		get 'watches'
  		response.should be_success
  	end
  end



end
