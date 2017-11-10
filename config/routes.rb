Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root 'cocktails#index'
  resources 'cocktails', only: %i(new show create update)do
    resources 'doses', only: %i(new create destroy), shallow: true
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
