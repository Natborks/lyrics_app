Rails.application.routes.draw do
  get 'static_pages/Home'

  get 'static_pages/About'

  root to: 'static_pages#Home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
