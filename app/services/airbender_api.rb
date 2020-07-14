class AirbenderApi
  def tribe_members(tribe)
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/")

    response = conn.get("/api/v1/characters?affiliation=#{tribe}") do |faraday|
      faraday.headers
    end
    json = JSON.parse(response.body, symbolize_names: true)
  end

end
