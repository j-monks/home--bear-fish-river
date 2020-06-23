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

end