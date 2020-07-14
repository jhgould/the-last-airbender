class SearchResults
  def members(nation)
      # tribe = params[:nation].sub(/_/, "+")
      tribe = nation.sub(/_/, "+")

      conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/")

      response = conn.get("/api/v1/characters?affiliation=#{tribe}") do |faraday|
        faraday.headers
      end
      json = JSON.parse(response.body, symbolize_names: true)

      @member = json.map do |member_data|
        Member.new(member_data)
      end
  end

end
