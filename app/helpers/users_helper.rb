module UsersHelper
  require 'net/http' #標準ライブラリの呼び出し
  require 'uri'
  require "json" #jsonを使うためのライブラリ

 def instagram
  if @user.third_token.present?
   third = @user.third_token
   media_count = @user.media_count
   
   instagram_business_account = Net::HTTP.get(URI.parse("https://graph.facebook.com/v6.0/me?fields=instagram_business_account&access_token=#{third}"))
   instagram_business_account = JSON.parse(instagram_business_account)["instagram_business_account"]["id"]
    
    
   user_media = Net::HTTP.get(URI.parse("https://graph.facebook.com/v3.3/#{instagram_business_account}?fields=name%2Cmedia.limit(#{media_count})%7Bcaption%2Clike_count%2Cmedia_url%2Cpermalink%2Ctimestamp%2Cusername%7D&access_token=#{third}"))
   JSON.parse(user_media)
  end
 end
 
end
