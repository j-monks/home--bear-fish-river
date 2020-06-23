class River
    attr_reader :name
    attr_accessor :fishes

    def initialize(name)
        name = @name
        @fishes = ["Salmon", "Haddock", "Trout"]
    end

    def fish_count()
        return @fishes.count()
    end

end