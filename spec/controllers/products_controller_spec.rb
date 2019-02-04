require 'rails_helper'

FactoryBot.define do
  factory :product do
    sequence(:title) { |n| "Title#{n}" }
    sequence(:content) { |n| "Content#{n}" }
  end
end


RSpec.describe ProductsController, type: :controller do

    describe 'routing' do
        it 'routes GET /version to productsController#index' do
          expect(get: '/products').to route_to(controller: 'products', action: 'index')
        end
      end


      describe "GET products#index" do
        context "when the user is login" do
          it "should list titles of all stories" do
            products = create_list(:product, 10)
            login_as(user, scope: :user)
            visit products_path
      
            products.each do |product|
              page.should have_content(product.title)
            end
          end
        end
      
    
end
