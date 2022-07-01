Rails.application.routes.draw do

  get "/songs" => "songs#index"
  get "/songs/:id" => "songs#show"
  post "/songs" => "songs#create"
  patch "/songs" => "songs#update"
  delete "/songs" => "songs#destroy"
end
