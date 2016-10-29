Rails.application.routes.draw do
  root 'juke#list'
  get 'comments/report', to: 'comments#report'
  get 'comments/local_time_refresh', to: 'comments#local_time_refresh'


  # Main pages
  get 'juke/control', to: 'juke#index'
  get 'juke/list', to: 'juke#list'

  # Partials
  get 'juke/playing_now', to: 'juke#playing_now'
  get 'juke/play_button', to: 'juke#play_button'
  get 'juke/album_jacket', to: 'juke#album_jacket'
  get 'juke/title', to: 'juke#title'

  # Images
  get 'juke/mp3_image', to: 'juke#mp3_image'
  get 'juke/construction', to: 'juke#construction'

  # ControlAPI
  get 'juke/add_song', to: 'juke#add_song'
  get 'juke/stop', to: 'juke#stop'
  get 'juke/next', to: 'juke#next'
  get 'juke/previous', to: 'juke#previous'
  get 'juke/play', to: 'juke#play'
  get 'juke/pause', to: 'juke#pause'
  get 'juke/pause_or_play', to: 'juke#pause_or_play'
  get 'juke/clear', to: 'juke#clear'

  resources :comments
end
