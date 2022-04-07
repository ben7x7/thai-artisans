Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#home'
    get 'contact', to: 'pages#contact', as: :contact
    get 'kookies', to: 'pages#kookies', as: :kookies
    get 'mentions', to: 'pages#mentions', as: :mentions
    get 'menu', to: 'pages#menu', as: :menu
    get 'rgpd', to: 'pages#rgpd', as: :rgpd
    resources :reservations, only: [:new, :create]
  end
end
