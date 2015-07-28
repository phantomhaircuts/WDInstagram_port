# # index
# get "/" do
#   @entries = Entry.all.order(:id).reverse
#   erb :index
# end

Rails.application.routes.draw do

  get 'entries' =>"entries#index"
  get 'entries/new' => 'entries#new'
  post 'entries' => 'entries#create'
  get 'entries/:id/:edit'=>"entries#edit"
  put 'entries/:id' => 'entries#update'
  get 'entries/:id' => 'entries#show'
  delete 'entries/:id' => 'entries#delete'
end
