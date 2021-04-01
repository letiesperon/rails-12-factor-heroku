Rails.application.routes.draw do
  get '/' => 'example#home'
  get '/cual_es_mi_nombre_var' => 'example#cual_es_mi_nombre_var'
  get '/cual_es_mi_nombre_redis' => 'example#cual_es_mi_nombre_redis'
  get '/cual_es_mi_nombre_global' => 'example#cual_es_mi_nombre_global'
end
