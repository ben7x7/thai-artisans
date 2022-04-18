Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#home'

    get 'template', to: 'pages#template', as: :template

    get 'contact', to: 'pages#contact', as: :contact
    get 'kookies', to: 'pages#kookies', as: :kookies
    get 'mentions', to: 'pages#mentions', as: :mentions
    get 'menu', to: 'pages#menu', as: :menu
    get 'rgpd', to: 'pages#rgpd', as: :rgpd
    resources :reservations, only: [:new, :create]

    get '/404', to: 'errors#not_found', via: :all
    get '/422', to: 'errors#unacceptable', via: :all
    get '/500', to: 'errors#server_error', via: :all
  end
end
