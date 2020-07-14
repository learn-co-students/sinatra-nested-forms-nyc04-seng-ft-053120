class Ship
    attr_accessor :name, :type, :booty
    @@all = []

    def initialize(name, type, booty)
        @name = name
        @type = type
        @booty = booty
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.clear
        self.all.clear
    end

end