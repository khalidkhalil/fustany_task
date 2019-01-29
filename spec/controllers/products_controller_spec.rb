require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

    describe 'routing' do
        it 'routes GET /version to productsController#index' do
          expect(get: '/products').to route_to(controller: 'products', action: 'index')
        end
      end

      
    
end
