require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../../../../../../models/term_store/term'
require_relative '../../../../../../../../../../../../../../sites'
require_relative '../../../../../../../../../../../../../item'
require_relative '../../../../../../../../../../../../term_stores'
require_relative '../../../../../../../../../../../item'
require_relative '../../../../../../../../../../groups'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../sets'
require_relative '../../../../../../../item'
require_relative '../../../../../../children'
require_relative '../../../../../item'
require_relative '../../../../children'
require_relative '../../../item'
require_relative '../../relations'
require_relative '../item'
require_relative './to_term'

module MicrosoftGraph
    module Sites
        module Item
            module TermStores
                module Item
                    module Groups
                        module Item
                            module Sets
                                module Item
                                    module Children
                                        module Item
                                            module Children
                                                module Item
                                                    module Relations
                                                        module Item
                                                            module ToTerm
                                                                ## 
                                                                # Provides operations to manage the toTerm property of the microsoft.graph.termStore.relation entity.
                                                                class ToTermRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                                    
                                                                    ## 
                                                                    ## Instantiates a new ToTermRequestBuilder and sets the default values.
                                                                    ## @param path_parameters Path parameters for the request
                                                                    ## @param request_adapter The request adapter to use to execute the requests.
                                                                    ## @return a void
                                                                    ## 
                                                                    def initialize(path_parameters, request_adapter)
                                                                        super(path_parameters, request_adapter, "{+baseurl}/sites/{site%2Did}/termStores/{store%2Did}/groups/{group%2Did}/sets/{set%2Did}/children/{term%2Did}/children/{term%2Did1}/relations/{relation%2Did}/toTerm{?%24select,%24expand}")
                                                                    end
                                                                    ## 
                                                                    ## The to [term] of the relation. The term to which the relationship is defined.
                                                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                    ## @return a Fiber of term
                                                                    ## 
                                                                    def get(request_configuration=nil)
                                                                        request_info = self.to_get_request_information(
                                                                            request_configuration
                                                                        )
                                                                        error_mapping = Hash.new
                                                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::TermStore::Term.create_from_discriminator_value(pn) }, error_mapping)
                                                                    end
                                                                    ## 
                                                                    ## The to [term] of the relation. The term to which the relationship is defined.
                                                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                    ## @return a request_information
                                                                    ## 
                                                                    def to_get_request_information(request_configuration=nil)
                                                                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                                        request_info.url_template = @url_template
                                                                        request_info.path_parameters = @path_parameters
                                                                        request_info.http_method = :GET
                                                                        request_info.headers.add('Accept', 'application/json')
                                                                        unless request_configuration.nil?
                                                                            request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                            request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                                                            request_info.add_request_options(request_configuration.options)
                                                                        end
                                                                        return request_info
                                                                    end

                                                                    ## 
                                                                    # The to [term] of the relation. The term to which the relationship is defined.
                                                                    class ToTermRequestBuilderGetQueryParameters
                                                                        
                                                                        ## 
                                                                        # Expand related entities
                                                                        attr_accessor :expand
                                                                        ## 
                                                                        # Select properties to be returned
                                                                        attr_accessor :select
                                                                        ## 
                                                                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                                                                        ## @param original_name The original query parameter name in the class.
                                                                        ## @return a string
                                                                        ## 
                                                                        def get_query_parameter(original_name)
                                                                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                                                                            case original_name
                                                                                when "expand"
                                                                                    return "%24expand"
                                                                                when "select"
                                                                                    return "%24select"
                                                                                else
                                                                                    return original_name
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
