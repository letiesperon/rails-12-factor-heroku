Rails.application.routes.draw do
  get '/whats_my_name_env' => 'example#whats_my_name_env'
  get '/whats_my_name_redis' => 'example#whats_my_name_redis'
  get '/whats_my_name_global' => 'example#whats_my_name_global'
end
