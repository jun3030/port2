Rails.application.routes.draw do

  root 'sessions#new'
   # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
 
  get 'posts/index'
  
  
  
  get 'users/:id/edit_profile', to: 'users#edit_profile', as: :users_profile # プロフィール設定画面
  patch 'users/:id/update_profile', to: 'users#update_profile', as: :update_profile # プロフィール アップデート
  get 'users/:id/edit_mypage', to: 'users#edit_mypage', as: :edit_mypage # マイページ
  patch 'users/:id/update_mypage', to: 'users#update_mypage', as: :update_mypage # マイページ アップデート
  patch 'users/:id/upload_instagram', to: 'users#upload_instagram', as: :upload_instagram # instagram アップロード
  get 'users/:id/edit_picture', to: 'users#edit_picture', as: :edit_picture # 画像編集
  patch 'users/:id/update_picture', to: 'users#update_picture', as: :update_picture # 画像アップロード
  delete 'users/:id/withdraw', to: 'users#withdraw', as: :withdraw # 退会処理
  
  
  get 'users/:id/posts/:post_id/users_confirm_posts', to: 'posts#users_confirm_posts', as: :confirm_posts #　userの記事を確認するページ
  get 'users/:id/posts/:post_id/users_edit_posts', to: 'posts#users_edit_posts', as: :edit_posts #　記事を編集するページ
  patch 'users/:id/posts/:post_id/users_update_posts', to: 'posts#users_update_posts', as: :update_posts #　記事を更新
  delete 'users/:id/posts/:post_id/users_delete_posts', to: 'posts#users_destroy_posts', as: :delete_posts #　記事を削除
  
  resources :users do
     
    get 'posts/:id/posts_show', to: 'posts#posts_show', as: :posts_show # モーダルウィンドウ
    get 'posts/users_posts', to: 'posts#users_posts', as: :posts #　記事を投稿するページ
    post 'posts/users_create_posts', to: 'posts#users_create_posts', as: :create_posts #　記事を作る
    
    
    get 'urls/add_mypage_content', to: 'urls#add_mypage_content', as: :add_mypage_content # マイページへ写真、動画をアップロードする為のページ
    post 'urls/add_mypage_content_create', to: 'urls#add_mypage_content_create', as: :add_mypage_content_create # マイページへ写真、動画をアップロードする
    
    patch 'urls/:id/users_imaeg_and_video_url', to: 'urls#users_imaeg_and_video_url', as: :users_url
    
    post 'favorite_folders/:id/create', to: 'favorite_folders#create', as: :create
    delete 'favorite_folders/:id/delete', to: 'favorite_folders#destroy', as: :destroy
  end
  
  delete 'rooms/:id/messages/:message_id/message_delete', to: 'messages#destroy', as: :message_delete
  
  resources :messages, only: [:create] do
  end
  
  resources :rooms, only: [:create, :show, :index] do
  end
  
 
end
