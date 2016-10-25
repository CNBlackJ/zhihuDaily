Rails.application.routes.draw do
  get 'frontpage/index'

  get 'frontpage/detail/:id', to: 'frontpage#detail', as: 'detail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
