Rails.application.routes.draw do
  get '/' => 'example#home'
  get '/cual_es_mi_nombre_var' => 'example#cual_es_mi_nombre_var'
end
