class Hero
    attr_accessor :name, :power, :bio

    HEROS = []

    def initialize(hero_params)
        hero_params.each do|key, value|
            self.send("#{key}=", value)
        end
        (HEROS << self).last
    end

    def self.all
        HEROS
    end
end