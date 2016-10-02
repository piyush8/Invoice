Rails.application.routes.draw do
  resources :invoices, except: [:edit, :update, :destory] do
   collection do
       match 'search' => 'invoices#search', via: [:get, :post], as: :search
   end
 end

   root 'invoices#index'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
end
