Rails.application.routes.draw do

  resources :student_modules
  resources :course_modules
  resources :lecturers
  devise_for :students
  root 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
