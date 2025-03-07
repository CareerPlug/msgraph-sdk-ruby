require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/bitlocker'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../information_protection'
require_relative './bitlocker'
require_relative './recovery_keys/item/bitlocker_recovery_key_item_request_builder'
require_relative './recovery_keys/recovery_keys_request_builder'

module MicrosoftGraph
    module InformationProtection
        module Bitlocker
            ## 
            # Provides operations to manage the bitlocker property of the microsoft.graph.informationProtection entity.
            class BitlockerRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the recoveryKeys property of the microsoft.graph.bitlocker entity.
                def recovery_keys()
                    return MicrosoftGraph::InformationProtection::Bitlocker::RecoveryKeys::RecoveryKeysRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new BitlockerRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/informationProtection/bitlocker{?%24select,%24expand}")
                end
                ## 
                ## Get bitlocker from informationProtection
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of bitlocker
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Bitlocker.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the recoveryKeys property of the microsoft.graph.bitlocker entity.
                ## @param id Unique identifier of the item
                ## @return a bitlocker_recovery_key_item_request_builder
                ## 
                def recovery_keys_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["bitlockerRecoveryKey%2Did"] = id
                    return MicrosoftGraph::InformationProtection::Bitlocker::RecoveryKeys::Item::BitlockerRecoveryKeyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Get bitlocker from informationProtection
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
                # Get bitlocker from informationProtection
                class BitlockerRequestBuilderGetQueryParameters
                    
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
