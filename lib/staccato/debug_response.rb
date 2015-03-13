module Staccato
  class DebugResponse

    def initialize(json)
      @params = JSON.parse(json)
    end

    def json
      @params
    end

  end
end