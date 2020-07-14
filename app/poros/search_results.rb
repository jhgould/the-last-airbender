class SearchResults

  def members(nation)
    tribe = nation.sub(/_/, "+")
    json = AirbenderApi.new.tribe_members(tribe)

    @member = json.map do |member_data|
      Member.new(member_data)
    end
  end

end
