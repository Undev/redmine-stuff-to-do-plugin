RedmineApp::Application.routes.draw do
  resource :stuff_to_do, :controller => "stuff_to_do", :only => [] do
    member do
      get 'index'
      post 'reorder'
      get 'available_issues'
      get 'time_grid'
      post 'add_to_time_grid'
      get 'remove_from_time_grid'
      get 'save_time_entry'
    end
  end
end
