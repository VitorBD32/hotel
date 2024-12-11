Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :admins
  devise_for :users

  namespace :administrativo do
    resources :servicos, path: 'servicos'
    resources :funcionarios, path: 'funcionarios'
    resources :reservas, path: 'reservas'
    resources :quartos, path: 'quartos'
    resources :hospedes, path: 'hospedes' do
      resources :hotels
      collection do
        get :export_csv
      end
    end
  end
 
  root to: 'welcome#index'
end




