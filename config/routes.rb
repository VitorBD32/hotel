Rails.application.routes.draw do
  devise_for :users
  resources :servicos, path: 'servicos'
  resources :funcionarios, path: 'funcionarios'
  resources :reservas, path: 'reservas'
  resources :quartos, path: 'quartos'
  resources :hospedes, path: 'hospedes' do
    collection do
      get :export_csv
    end
  end
  root 'hospedes#index'
end




