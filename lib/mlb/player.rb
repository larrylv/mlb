module MLB
  class Player
    attr_reader :name, :number, :position
    private_class_method :new

    protected

    # Returns an array of Player objects given a team roster
    def self.all_from_roster(players)
      players.map do |player|
        new(
          :name     => player['player'],
          :number   => player['number'],
          :position => player['position']
        )
      end
    end

    private

    def initialize(attributes={})
      super unless attributes.is_a?(Hash)
      @name     = attributes[:name]
      @number   = attributes[:number]
      @position = attributes[:position]
    end

  end
end