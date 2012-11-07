Financeround::Application.routes.draw do
  root to: 'dashboards#show'

  resource :dashboard, only: :show
end
