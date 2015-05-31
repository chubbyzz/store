scope module: :api do
  constraints subdomain: 'api' do
    resources :products, only: [:index, :create]
    post '/products/upload', to: 'products#upload'
  end
end
