class Player
    attr_accessor :inventory

    def initialize
        @inventory = Inventory.new
    end
end
