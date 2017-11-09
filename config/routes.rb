Rails.application.routes.draw do

  root 'cocktails#index'
  resources 'cocktails', only: %i(index new show create)do
    resources 'doses', only: %i(new create destroy)
  end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
