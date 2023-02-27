require "rails_helper"

RSpec.describe ProcessedProductsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/processed_products").to route_to("processed_products#index")
    end

    it "routes to #new" do
      expect(get: "/processed_products/new").to route_to("processed_products#new")
    end

    it "routes to #show" do
      expect(get: "/processed_products/1").to route_to("processed_products#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/processed_products/1/edit").to route_to("processed_products#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/processed_products").to route_to("processed_products#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/processed_products/1").to route_to("processed_products#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/processed_products/1").to route_to("processed_products#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/processed_products/1").to route_to("processed_products#destroy", id: "1")
    end
  end
end
