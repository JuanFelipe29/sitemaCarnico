require "rails_helper"

RSpec.describe CutTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/cut_types").to route_to("cut_types#index")
    end

    it "routes to #new" do
      expect(get: "/cut_types/new").to route_to("cut_types#new")
    end

    it "routes to #show" do
      expect(get: "/cut_types/1").to route_to("cut_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/cut_types/1/edit").to route_to("cut_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/cut_types").to route_to("cut_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/cut_types/1").to route_to("cut_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/cut_types/1").to route_to("cut_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/cut_types/1").to route_to("cut_types#destroy", id: "1")
    end
  end
end
