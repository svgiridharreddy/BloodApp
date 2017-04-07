Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["523139546722-g9ijh7c2pub1rbr3j9getnlkoota3tun"], ENV["XmAabtQfKBHA41DQxUDwMN4R"]
  provider :github, '2354ef193d835d27943f', '78f238e67a3f607d135b0a173ea903b5e63171fb'
  
end
