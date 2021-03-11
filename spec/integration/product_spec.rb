require 'swagger_helper'

describe 'Products API' do

  path '/api/products' do

    post 'Creates a product' do
      tags 'Products'
      consumes 'application/json'
      parameter name: :product, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          quantity: { type: :integer }
        },
        required: [ 'name', 'quantity' ]
      }

      response '201', 'product created' do
        let(:product) { { name: 'foo', quantity: 10 } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:product) { { name: 'foo' } }
        run_test!
      end
    end
  end

  path '/api/products/{id}' do

    get 'Retrieves a product' do
      tags 'Products'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'product found' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            name: { type: :string },
            quantity: { type: :integer }
          },
          required: [ 'id', 'name', 'quantity' ]

        let(:id) { product.create(name: 'foo', quantity: 10).id }
        run_test!
      end

      response '404', 'product not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end