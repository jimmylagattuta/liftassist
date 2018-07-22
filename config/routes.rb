Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/api/v1/get_lifts" => "api/v1/lifts#get_lifts"
  post "/api/v1/new_lift" => "api/v1/lifts#new_lift"
  post "/api/v1/update_lift" => "api/v1/lifts#update_lift"
end
