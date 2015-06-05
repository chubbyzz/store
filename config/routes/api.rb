scope module: :api do
  constraints subdomain: 'api' do
    resources :products, only: [:index, :create]
    get '/products/:page', to: 'products#page'
    post '/products/upload', to: 'products#upload'
  end
end
