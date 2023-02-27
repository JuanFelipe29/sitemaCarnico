require "rails_helper"

RSpec.describe CutsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/cuts").to route_to("cuts#index")
    end

    it "routes to #new" do
      expect(get: "/cuts/new").to route_to("cuts#new")
    end

    it "routes to #show" do
      expect(get: "/cuts/1").to route_to("cuts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/cuts/1/edit").to route_to("cuts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/cuts").to route_to("cuts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/cuts/1").to route_to("cuts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/cuts/1").to route_to("cuts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/cuts/1").to route_to("cuts#destroy", id: "1")
    end
  end
end
