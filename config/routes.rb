Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  post 'write'  => 'home#write'
  get 'list' => 'home#list'
  get 'destroy/:id' => 'home#destroy' #:이 있으면 destroy/() 괄호 안에 어떤 문자열이 와도 id에 저장하가ㅔ 된다
                                      #:이 없으면 반드시 'id'라는 문자열이 나와야 한다.
                                      #:가 있기에 id에 숫자가 나와도 home#desroy로 던져줄 수 있다
  get 'update_view/:id' => 'home#update_view'
  post 'siljae_update/:id' => "home#siljae"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
