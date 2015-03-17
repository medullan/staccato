module Staccato
  class DebugResponse

    def initialize(response, params_sent_to_ga)
      @ga_response_json = response.body
      @ga_response_code = response.code
      @params_sent_to_ga = params_sent_to_ga
    end

    def debug_info
      return construct_ga_debug_info(@ga_response_json, @ga_response_code, @params_sent_to_ga)
    end

    def construct_ga_debug_info(ga_response_json, ga_response_code, params_sent_to_ga)
      @response_hash = {:ga_response_json => ga_response_json,
                        :ga_response_code => ga_response_code,
                        :params_sent_to_ga => params_sent_to_ga}
      @response_hash
    end
  end
end