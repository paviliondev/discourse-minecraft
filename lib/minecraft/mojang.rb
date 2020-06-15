require 'excon'

class DiscourseMinecraft::Mojang
  def self.request(path, opts={})

    connection = Excon.new(
      "https://api.mojang.com#{path}",
      :headers => {
        "Accept" => "application/json, */*",
        "Content-Type" => "application/json",
      }
    )

    params = {
      method: opts[:type] || 'GET'
    }

    response = connection.request(params)

    response.body.present? ? JSON.parse(response.body) : nil
  end
end