Rails.application.routes.draw do

  root 'home#link'
  # get 'home/index'
  # get 'home/link'


  get 'answer/output_m'
  get 'answer/output_w'
  get 'answer/output_r'
  # get 'question/loading'
  # get 'question/control'
  # get 'question/question_type1'
  # get 'question/question_type2'
  # get 'question/question_type3'
  # get 'home/question_type1'
  # get 'home/question_type2'
  # get 'home/question_type3'
  # get 'home/output_m'
  # get 'home/output_w'
  # get 'home/output_r'
  # get 'category/choose'

  resources :user do
    get :loading, on: :collection
    get :edit_question_type1, on: :member, only: :edit
    get :edit_question_type2, on: :member, only: :edit
    get :edit_question_type3, on: :member, only: :edit
    post :update_question_type, on: :member

  end
  # get 'user/create'
  # get 'user/read'
  # get 'user/update'
  # get 'user/delete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
