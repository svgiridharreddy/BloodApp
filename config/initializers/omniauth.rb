Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["523139546722-g9ijh7c2pub1rbr3j9getnlkoota3tun"], ENV["XmAabtQfKBHA41DQxUDwMN4R"]
  {
      :name => "google",
      :scope => "email, profile, plus.me, http://gdata.youtube.com",
      :prompt => "select_account",
      :image_aspect_ratio => "square",
      :image_size => 50
    }
end
