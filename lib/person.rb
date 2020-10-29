class Person
    attr_accessor :name, :cash, :account

    def initialize(attrs = {})
        @name = get_name(attrs[:name])
    end

    private

    def get_name(name)
        name == nil ? missing_name : name
    end

    def missing_name
        raise 'A name is required'
    end
end