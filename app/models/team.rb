class Team
  attr_reader :name,:motto,:members
  @@all = []
  def initialize details
    @name = details[:name]
    @motto = details[:motto]
    @members = details[:members]
    @@all << self
  end

  def self.all
    @@all
  end
end
