module Staccato
  class DebugResponse

    def initialize(ga_response_json, params_sent_to_ga)
      @ga_response_json = JSON.parse(ga_response_json)
      @params_sent_to_ga = params_sent_to_ga
    end

    def ga_response_json
      @ga_response_json
    end

    def debug_info
      return @ga_response_json, @params_sent_to_ga
    end
  end
end