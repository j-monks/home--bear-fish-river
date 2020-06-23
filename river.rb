class River
    attr_reader :name
    attr_accessor :fishes

    def initialize(name)
        name = @name
        @fishes = ["Salmon", "Haddock", "Trout"]
    end

end