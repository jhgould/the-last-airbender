class Member
    attr_reader :allies,
                :enemies,
                :photoUrl,
                :name,
                :affiliation
                
  def initialize(attributes)
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @photoUrl = attributes[:photoUrl]
    @name = attributes[:name]
    @affiliation = attributes[:affiliation]
  end
end
