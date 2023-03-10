require "rails_helper"

RSpec.describe NameOfProductsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/name_of_products").to route_to("name_of_products#index")
    end

    it "routes to #new" do
      expect(get: "/name_of_products/new").to route_to("name_of_products#new")
    end

    it "routes to #show" do
      expect(get: "/name_of_products/1").to route_to("name_of_products#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/name_of_products/1/edit").to route_to("name_of_products#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/name_of_products").to route_to("name_of_products#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/name_of_products/1").to route_to("name_of_products#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/name_of_products/1").to route_to("name_of_products#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/name_of_products/1").to route_to("name_of_products#destroy", id: "1")
    end
  end
end
