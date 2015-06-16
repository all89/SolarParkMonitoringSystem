Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users

  resources :park_structures
  root to: "park_structures#allparks"
  get '/structure', to: 'park_structures#index'
  get '/arrays', to: 'park_structures#allarrays'
  get '/mvs', to: 'park_structures#allmvs'

  resources :general_infos
  get '/general_info', to: 'general_infos#index'

  resources :meteo_parameters
  get '/meteorological_parameters', to: 'meteo_parameters#index'

  resources :mv_voltages

  resources :mv_currents
  get '/mv1', to: 'mv_currents#mv1'
  get '/mv2', to: 'mv_currents#mv2'
  get '/mv3', to: 'mv_currents#mv3'

  resources :mv_outputpowers
  get '/outputpower', to: 'mv_outputpowers#index'

  resources :lv_activepowers
  get '/lv', to: 'lv_activepowers#index'

  resources :array_voltages

  resources :array_currents

  resources :array_powers
  get '/array11', to: 'array_powers#array11'
  get '/array12', to: 'array_powers#array12'
  get '/array13', to: 'array_powers#array13'

  resources :calculations
  get '/daily_energy', to: 'calculations#index'
  get '/pr_ratio', to: 'calculations#pr'

end