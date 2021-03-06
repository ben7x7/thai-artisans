Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#home'

    get 'contact', to: 'pages#contact', as: :contact
    get 'kookies', to: 'pages#kookies', as: :kookies
    get 'mentions', to: 'pages#mentions', as: :mentions
    get 'carte', to: 'pages#carte', as: :carte
    get 'rgpd', to: 'pages#rgpd', as: :rgpd
    resources :bookings, only: [:new, :create]

    get '/404', to: 'errors#not_found', via: :all
    get '/422', to: 'errors#unacceptable', via: :all
    get '/500', to: 'errors#server_error', via: :all
  end
end
