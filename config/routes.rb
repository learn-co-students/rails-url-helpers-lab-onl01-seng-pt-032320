Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
<<<<<<< HEAD
end
=======
end
>>>>>>> add2f387cfad78ec8628f08a8424449960b5cdf7
