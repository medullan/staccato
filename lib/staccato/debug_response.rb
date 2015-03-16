module Staccato
  class DebugResponse

    def initialize(ga_response_json, params_sent_to_ga)
      @ga_response_json = parse_ga_response(ga_response_json)
      @params_sent_to_ga = params_sent_to_ga
    end

    def debug_info
      return construct_ga_debug_info(@ga_response_json, @params_sent_to_ga)
    end

    def construct_ga_debug_info(ga_response_json, params_sent_to_ga)
      if !ga_response_json.blank? && !params_sent_to_ga.blank?
        validity = ga_response_json['hit_parsing_result'][0]['valid']
        parser_message = ga_response_json['hit_parsing_result'][0].to_a.join("--")

        @response_hash = {:validity => validity,
                          :parser_message => parser_message,
                          :params_sent_to_ga => params_sent_to_ga}
        @response_hash
      end
    end

    private
      def parse_ga_response(ga_response_json)
        if !ga_response_json.blank?
          @ga_response_json = JSON.parse(ga_response_json)
        end
      end
  end
end