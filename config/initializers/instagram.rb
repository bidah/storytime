require 'instagram'
Instagram.configure do |config|
  config.client_id = "9bad3b93ac584a74aad924067e34ed21"
  config.client_secret = "2cd2db7633fb406ebb5679b0b551788a"
  # For secured endpoints only
  #config.client_ips = '<Comma separated list of IPs>'
end