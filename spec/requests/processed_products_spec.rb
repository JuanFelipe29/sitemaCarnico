require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/processed_products", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # ProcessedProduct. As you add validations to ProcessedProduct, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ProcessedProduct.create! valid_attributes
      get processed_products_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      processed_product = ProcessedProduct.create! valid_attributes
      get processed_product_url(processed_product)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_processed_product_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      processed_product = ProcessedProduct.create! valid_attributes
      get edit_processed_product_url(processed_product)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ProcessedProduct" do
        expect {
          post processed_products_url, params: { processed_product: valid_attributes }
        }.to change(ProcessedProduct, :count).by(1)
      end

      it "redirects to the created processed_product" do
        post processed_products_url, params: { processed_product: valid_attributes }
        expect(response).to redirect_to(processed_product_url(ProcessedProduct.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ProcessedProduct" do
        expect {
          post processed_products_url, params: { processed_product: invalid_attributes }
        }.to change(ProcessedProduct, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post processed_products_url, params: { processed_product: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested processed_product" do
        processed_product = ProcessedProduct.create! valid_attributes
        patch processed_product_url(processed_product), params: { processed_product: new_attributes }
        processed_product.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the processed_product" do
        processed_product = ProcessedProduct.create! valid_attributes
        patch processed_product_url(processed_product), params: { processed_product: new_attributes }
        processed_product.reload
        expect(response).to redirect_to(processed_product_url(processed_product))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        processed_product = ProcessedProduct.create! valid_attributes
        patch processed_product_url(processed_product), params: { processed_product: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested processed_product" do
      processed_product = ProcessedProduct.create! valid_attributes
      expect {
        delete processed_product_url(processed_product)
      }.to change(ProcessedProduct, :count).by(-1)
    end

    it "redirects to the processed_products list" do
      processed_product = ProcessedProduct.create! valid_attributes
      delete processed_product_url(processed_product)
      expect(response).to redirect_to(processed_products_url)
    end
  end
end
