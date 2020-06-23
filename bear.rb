class Bear
    attr_reader :name
    attr_accessor :stomach

    def initialize(name, type)
        @name = name
        @type = type
        @stomach = []
    end

    def roar()
        return "Roar!"
    end

    def food_count()
        return @stomach.count()
    end

    def bear_eats_fish(river)
        @stomach << river.fishes[1]
    end

end