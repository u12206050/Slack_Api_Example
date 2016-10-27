require 'httparty'

class ApiWrapper
  BASE_URL = "https://slack.com/api/"
  TOKEN  = ENV["TOKEN"]  

  def self.sendmsg(channel, msg)
    url = BASE_URL + "chat.postMessage?" + "token=#{TOKEN}" + "&text=#{msg}&channel=#{channel}" 
    data = HTTParty.post(url)
    raise
  end

  def self.listchannels()
   url = BASE_URL + "channels.list?" + "token=#{TOKEN}" + "&pretty=1&exclude_archived=1"
   data = HTTParty.get(url)
   if data["channels"]
     return data["channels"]
   else
     return []
   end
  end

end
