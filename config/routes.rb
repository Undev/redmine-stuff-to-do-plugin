RedmineApp::Application.routes.draw do
  resource :stuff_to_do, :only => [:index] do
    member do
      get 'reorder'
      get 'available_issues'
      get 'time_grid'
      get 'add_to_time_grid'
      get 'remove_from_time_grid'
      get 'save_time_entry'
    end
  end
end
